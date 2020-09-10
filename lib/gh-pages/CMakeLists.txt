
file(GLOB_RECURSE GH_PAGES_CONFIG
    "_config.yml"
    "_layouts/default.html"
)

file(GLOB_RECURSE GH_PAGES_LAYOUT
    "_layouts/default.html"
)

file(GLOB_RECURSE GH_PAGES_CSS
    "_sass/fonts.scss"
    "_sass/jekyll-theme-midnight.scss"
    "_sass/normalize.scss"
    "_sass/rouge-base16-dark.scss"
)

source_group("GitHub Pages"          FILES ${GH_PAGES_CONFIG}         )
source_group("GitHub Pages/_layouts" FILES ${GH_PAGES_LAYOUT}         )
source_group("GitHub Pages/_sass"    FILES ${GH_PAGES_CSS}            )

file(COPY ${GH_PAGES_CONFIG} DESTINATION ${OUTPUT_DIR_MAIN}           )
file(COPY ${GH_PAGES_LAYOUT} DESTINATION ${OUTPUT_DIR_MAIN}/_layouts/ )
file(COPY ${GH_PAGES_CSS}    DESTINATION ${OUTPUT_DIR_MAIN}/_sass/    )
