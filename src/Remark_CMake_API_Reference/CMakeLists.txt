set(PRESENTATION_NAME "Remark_CMake_API_Reference")

add_remark_chapter(${PRESENTATION_NAME}_chapter_title
    BASE_DIR "1_title"
    MARKDOWN_SLIDES
        slides.md
    RESOURCES
        img/tittle.jpg
)

add_remark_chapter(${PRESENTATION_NAME}_chapter_api
    BASE_DIR "2_api_reference"
    MARKDOWN_SLIDES
        slides.md
)

add_remark_chapter(${PRESENTATION_NAME}_chapter_end
    BASE_DIR "3_end"
    MARKDOWN_SLIDES
        slides.md
    RESOURCES
        img/Special_Thanks.jpg
)

add_remark_slides(${PRESENTATION_NAME} ALL HANDOUTS
    NAME ${PRESENTATION_NAME}
    TITLE "Remark-CMake API Reference"
    STYLE remark-style-default
    STYLE_TEMPLATE style.css.in
    LANGUAGES
        remark-language-cmake
    CHAPTERS
        ${PRESENTATION_NAME}_chapter_title
        ${PRESENTATION_NAME}_chapter_api
        ${PRESENTATION_NAME}_chapter_end
)
