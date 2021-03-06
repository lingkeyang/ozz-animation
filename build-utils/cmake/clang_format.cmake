# Apply clang-format utility (if found) to all sources.
#------------------------------------------------------

find_program(CLANG_FORMAT "clang-format")

if(CLANG_FORMAT)

  file(GLOB_RECURSE
       all_source_files
       "include/*.h" 
       "src/*.cc" "src/*.h"
       "test/*.cc" "test/*.h"
       "samples/*.cc" "samples/*.h" 
       "howtos/*.cc")

  add_custom_target(
    BUILD_CLANG_FORMAT
    COMMAND ${CLANG_FORMAT} -i -style=google ${all_source_files}
    COMMENT ${all_source_files}    )

endif()