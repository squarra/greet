cmake_minimum_required(VERSION 3.10)

project(greet)

add_library(greet_shared SHARED src/greeting.cpp)
add_library(greet_static STATIC src/greeting.cpp)
set_target_properties(greet_shared PROPERTIES OUTPUT_NAME greet)
set_target_properties(greet_static PROPERTIES OUTPUT_NAME greet)

add_executable(greeter src/main.cpp)
target_link_libraries(greeter PRIVATE greet)

install(TARGETS greeter DESTINATION bin)
install(TARGETS greet_shared greet_static DESTINATION lib)