cmake_minimum_required(VERSION 3.16)

project(CW_ASM C ASM_NASM)

enable_language(ASM_NASM)
set(CMAKE_ASM_NASM_OBJECT_FORMAT elf64)
set(CMAKE_ASM_NASM_COMPILE_OBJECT "<CMAKE_ASM_NASM_COMPILER> <INCLUDES> \
    <FLAGS> -f ${CMAKE_ASM_NASM_OBJECT_FORMAT} -o <OBJECT> <SOURCE>")

set_source_files_properties(src/main.c PROPERTIES COMPILE_FLAGS "-g")
set_source_files_properties(src/reverse_num.asm PROPERTIES COMPILE_FLAGS "-g -Fdwarf")
set_source_files_properties(src/middle_char.asm PROPERTIES COMPILE_FLAGS "-g -Fdwarf")
set_source_files_properties(src/maxp_array.asm PROPERTIES COMPILE_FLAGS "-g -Fdwarf")
set_source_files_properties(src/sqrdigs.asm PROPERTIES COMPILE_FLAGS "-g -Fdwarf")

add_executable(cwasm
    src/main.c
    src/reverse_num.asm
    src/middle_char.asm
    src/maxp_array.asm
    src/sqrdigs.asm
)