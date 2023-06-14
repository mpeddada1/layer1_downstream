#!/bin/bash

function repo_root() {
  local dir="$1"
  while [[ ! -d "${dir}/.git" ]]; do
    dir="$(dirname "$dir")"
  done
  echo "${dir}"
}

git clone https://github.com/mpeddada1/layer1_upstream
echo "Hellooooo"
pwd
# Executor script home


SCRIPT_PATH="$(realpath "$0")"
SCRIPT_DIR="$(dirname "${SCRIPT_PATH}")"
PROJECT_ROOT="$(repo_root "${SCRIPT_DIR}")"

PROJECT_ROOT="${PROJECT_ROOT}" bash layer1_upstream/executor.sh run_graalvm_tests.sh