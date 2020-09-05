#!/usr/bin/env bash

PROJECT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
BUILD_DIR="${PROJECT_DIR}/build"

mkd()
{
    mkdir -p "$@" && cd "$@"
}

build()
{
    cmake ..

    if [ -f ${BUILD_DIR}/CMakeFiles/CMakeError.log ]; then
        echo "============================== CMake Errors:   =============================="
        cat ${BUILD_DIR}/CMakeFiles/CMakeError.log
        echo "============================================================================="
    fi

    if [ -f ${BUILD_DIR}/CMakeFiles/CMakeOutput.log ]; then
        echo "============================== CMake Output:   =============================="
        cat ${BUILD_DIR}/CMakeFiles/CMakeOutput.log
        echo "============================================================================="
    fi

    cmake --build .
}

mkd ${BUILD_DIR}
build

cd ${PROJECT_DIR}
rm -rf ${BUILD_DIR}
