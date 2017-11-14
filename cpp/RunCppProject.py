import os
import ParseCMakeLists
project_name = ParseCMakeLists.get_add_executable_options().split(' ')[0]
if os.path.exists(project_name):
    os.system("./" + project_name)
else:
    print("target executable file is missing")
