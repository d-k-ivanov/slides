
file(GLOB_RECURSE SRC
    "_config.yml"
)
source_group("GitHub Pages" FILES ${SRC})

file(COPY ${SRC} DESTINATION ${OUTPUT_DIR_MAIN})
