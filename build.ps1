#!/usr/bin/env pwsh

$command = {
    $PROJECT_DIR = Get-Location
    $BUILD_DIR = "${PROJECT_DIR}\\build"

    function mkd() {
        New-Item ${BUILD_DIR} -ItemType Directory -ErrorAction SilentlyContinue
        Set-Location ${BUILD_DIR}
    }

    function build {
        cmake ..

        if (Test-Path "${BUILD_DIR}\\CMakeFiles\\CMakeError.log")
        {
            Write-Output "============================== CMake Errors:   =============================="
            Get-Content "${BUILD_DIR}\\CMakeFiles\\CMakeError.log"
            Write-Output "============================================================================="
        }

        if (Test-Path "${BUILD_DIR}\\CMakeFiles\\CMakeOutput.log")
        {
            Write-Output "============================== CMake Output:   =============================="
            Get-Content "${BUILD_DIR}\\CMakeFiles\\CMakeOutput.log"
            Write-Output "============================================================================="
        }

        cmake --build .
    }


    mkd
    build

    Set-Location ${PROJECT_DIR}
    Remove-Item -Recurse -Force ${BUILD_DIR}
}

PowerShell.exe -NoLogo -NoProfile -NonInteractive ${command}
