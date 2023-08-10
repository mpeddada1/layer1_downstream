#!/bin/bash

script_home=$(mktemp -d)

git clone https://github.com/mpeddada1/layer1_upstream "$script_home"/layer1_upstream

# Path to executor script
ls $script_home

bash "${script_home}"/layer1_upstream/executor.sh run_graalvm_tests.sh
