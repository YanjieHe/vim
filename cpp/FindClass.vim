function FindClass()
python3 << EOF
import re
import os
import vim

def get_files():
	files = []
	all_files = vim.eval("globpath('.','*')").splitlines()
	for f in all_files:
		name, extension = os.path.splitext(f)
		if extension == ".h":
			files.append(f)
	return files

def adjust_order(class_name, files):
	if len(files) == 0:
		return
	else:
		expected_name = class_name + ".h"
		for i in range(len(files)):
			if f.endswith(expected_name):
				files[0], files[i] = files[i], files[0]
				return

def get_position():
	for name in get_files():
		f = open(name, "r")	
		line_index = 1
		for line in f:
			result = pattern.search(line)
			if result:
				return (line_index, name)
			else:
				line_index += 1
		f.close()
	return (-1, "")

def current_path():
	return vim.eval("expand('%:h')")

def change_to_file(file_name):
	file_name = current_path() + "/" + file_name
	try:
		vim.command("buffer " + file_name)
	except vim.error:
		vim.command("edit " + file_name)

class_name = vim.eval("expand('<cword>')")
pattern = re.compile(r"class[\s]+" + class_name)


line_index, file_name = get_position()
if line_index != -1:
	change_to_file(file_name)
	vim.eval("setpos('.', [0, {0}, 0, 0])".format(line_index))
else:
	print("class " + class_name + " not found")
EOF
endfunction
