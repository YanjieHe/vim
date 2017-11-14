function SwitchHeaderSource()
python3 << EOF
import os
import vim
def current_file_name():
	return vim.eval("expand('%:t')")

def current_path():
	return vim.eval("expand('%:h')")

def change_to_file(file_name):
	file_name = current_path() + "/" + file_name
	try:
		vim.command("buffer " + file_name)
	except vim.error:
		vim.command("edit " + file_name)
		
name, extension = os.path.splitext(current_file_name())
if extension == ".cpp":
	if os.path.exists(name + ".h"):
		change_to_file(name + ".h")
	else:
		print("Header file does not exists.")
elif extension == ".h":
	if os.path.exists(name + ".cpp"):
		change_to_file(name + ".cpp")
	else:
		print("Source file does not exists.")
else:
	print("This file is not a cpp file.")
EOF
endfunction
