add_remark_engine(default_engine
    ENGINE scripts/remark.js
    HTML_TEMPLATE templates/default_template.html.in
    RESOURCES
        favicon.ico
        scripts/jquery.js
        scripts/pointer.laser.js
)

add_subdirectory(css)
add_subdirectory(languages)
