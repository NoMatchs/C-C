cmake_minimum_required(VERSION 3.16)

project(QtCalculator VERSION 0.1 LANGUAGES CXX)

# 设置 C++ 标准
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# 寻找 Qt 库
find_package(Qt6 REQUIRED COMPONENTS Widgets)

# 告诉 CMake 自动处理 Qt 的 MOC
set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTOUIC ON)
set(CMAKE_AUTORCC ON)

# 添加可执行文件
add_executable(QtCalculator
    main.cpp
    calculator.h
    calculator.cpp
)

# 链接 Qt 的 Widgets 模块
target_link_libraries(QtCalculator PRIVATE Qt6::Widgets)

