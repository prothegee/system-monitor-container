cmake_minimum_required(VERSION 3.25)

project(backend-9001)

add_executable(${PROJECT_NAME} main.cc)

find_package(Drogon CONFIG REQUIRED)

target_link_libraries(${PROJECT_NAME} PRIVATE Drogon::Drogon)

