cmake_minimum_required(VERSION 3.10)
project(slides LANGUAGES CXX VERSION 0.1.0.0)

# set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} ${CMAKE_CURRENT_SOURCE_DIR}/cmake)
list(APPEND CMAKE_MODULE_PATH ${CMAKE_CURRENT_SOURCE_DIR}/cmake)
set(CMAKE_INCLUDE_CURRENT_DIR ON)

include(base)
include(macros)
include(remark)

# Set basic variables: output paths, install paths, lib paths, etc.
set_base_vars()

# Set PROJECT_VERSION_PATCH and PROJECT_VERSION_TWEAK to 0 if not present, needed by add_project_meta
fix_project_version()

# Set additional project information
set(AUTHOR "Dmitry Ivanov")
set(COMPANY "Dmitry Ivanov")
set(COPYRIGHT "Copyright (c) 2020 ${AUTHOR}. All rights reserved.")
set(IDENTIFIER "https://d-k-ivanov.github.io/slides")

file(WRITE  ${OUTPUT_DIR_MAIN}/about.txt "${COPYRIGHT}\n")
file(APPEND ${OUTPUT_DIR_MAIN}/about.txt "--------------------------------------------------------------------------------\n")
file(APPEND ${OUTPUT_DIR_MAIN}/about.txt "Application Name: ${CMAKE_PROJECT_NAME}\n")
file(APPEND ${OUTPUT_DIR_MAIN}/about.txt "Application Version: ${CMAKE_PROJECT_VERSION}\n")
file(APPEND ${OUTPUT_DIR_MAIN}/about.txt "Author: ${AUTHOR}\n")
file(APPEND ${OUTPUT_DIR_MAIN}/about.txt "Company: ${COMPANY}\n")
file(APPEND ${OUTPUT_DIR_MAIN}/about.txt "Identifier: ${IDENTIFIER}\n")

add_subdirectory("lib")
add_subdirectory("src")

file(COPY ${CMAKE_SOURCE_DIR}/README.md DESTINATION ${OUTPUT_DIR_MAIN})

