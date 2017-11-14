# cmake_minimum_required(VERSION 3.1.0) 
# PROJECT(cmake_test)
# 
# SET(CMAKE_CXX_STANDARD 11)
# ADD_EXECUTABLE(my_program main.cpp MyClass.h MyClass.cpp) 

import os
import sys

def create_project(project_name):
    os.system("mkdir " + project_name)
    os.system("mkdir ./{0}/build".format(project_name))
    f = open("./{0}/build/CMakeLists.txt".format(project_name), "w")
    f.write("cmake_minimum_required(VERSION 3.1.0)") 
    f.write("\n")
    f.write("PROJECT({0})".format(project_name))
    f.write("\n")
    f.write("SET(CMAKE_CXX_STANDARD 11)")
    f.write("\n")
    f.write("ADD_EXECUTABLE({0} main.cpp)".format(project_name))
    f.close()

def create_main_cpp():
    f = open("./{0}/main.cpp".format(project_name), "w")
    f.write("#include <iostream>\n")
    f.write("\n")
    f.write("using namespace std;\n")
    f.write("\n")
    f.write("int main(int argc, char *argv[])\n")
    f.write("{\n")
    f.write('\tcout << "Hello world!" << endl;\n')
    f.write("\treturn 0;\n")
    f.write("}\n")
    f.close()

def create_clang_format():
    f = open(os.environ["HOME"] + "/.vim/cpp/Template.clang-format", "r")
    clang_format = f.read()
    f.close()
    f = open("./{0}/.clang-format".format(project_name), "w")
    f.write(clang_format)
    f.close()

if len(sys.argv) == 2:
    project_name = sys.argv[1]
    create_project(project_name)
    create_main_cpp()
    create_clang_format()
else:
    print("wrong argument for creating cpp project")
