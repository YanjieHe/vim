function CreateCppClass(class_name)
python3 << EOF
import vim
import os

class_name = vim.eval("a:class_name")
f_h = open(os.environ["HOME"] + "/.vim/cpp/ClassTemplate.h", "r")
content_h = f_h.read()
f_h.close()

f_cpp = open(os.environ["HOME"] + "/.vim/cpp/ClassTemplate.cpp", "r")
content_cpp = f_cpp.read()
f_cpp.close()

content_h = content_h.replace("CLASSTEMPLATE_H", class_name.upper() + "_H")
content_h = content_h.replace("ClassTemplate", class_name)

content_cpp = content_cpp.replace("ClassTemplate", class_name)

f_h = open(class_name + ".h", "w")
f_h.write(content_h)
f_h.close()


f_cpp = open(class_name + ".cpp", "w")
f_cpp.write(content_cpp)
f_cpp.close()

vim.command("edit " + class_name + ".h")

EOF
endfunction
