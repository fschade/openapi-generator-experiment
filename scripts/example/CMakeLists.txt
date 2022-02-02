cmake_minimum_required(VERSION 3.2)
project(client-test)

find_package(Qt5Core REQUIRED)


add_subdirectory(client)

add_executable(foo
    main.cpp
)

target_link_libraries(foo
    client
    Qt5::Core
)

target_include_directories(foo
  PUBLIC
    output/client
)
