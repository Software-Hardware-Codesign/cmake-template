#!/bin/bash

function compile() {
    local TOOLCHAIN_HOME=${1}
    local TARGET=${2}
    local source_dir=${3}
    
    local temp=$(pwd)
    cd ${source_dir}
    cmake "-DTOOLCHAIN_HOME=${TOOLCHAIN_HOME}" \
          "-DTARGET=${TARGET}" \
          -S . -B "./build/${TARGET}"
    cmake --build "./build/${TARGET}"
    cd ${temp}
}

