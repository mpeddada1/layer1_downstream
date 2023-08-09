#!/bin/bash

function repo_root() {
  local dir="$1"
  while [[ ! -d "${dir}/.git" ]]; do
    dir="$(dirname "$dir")"
  done
  echo "${dir}"
}

script_home=$(mktemp -d)

git clone https://github.com/mpeddada1/layer1_upstream "$script_home"/layer1_upstream
# Executor script home
ls $script_home


SCRIPT_PATH="$(realpath "$0")"
SCRIPT_DIR="$(dirname "${SCRIPT_PATH}")"
PROJECT_ROOT="$(repo_root "${SCRIPT_DIR}")"

bash "${script_home}"/layer1_upstream/executor.sh run_graalvm_tests.sh