function CountLinesOfCode()
python3 << EOF
import os
import os.path
names = os.listdir()
files = []
for name in names:
    extension = os.path.splitext(name)[1]
    if extension == ".cpp":
        files.append(name)
    elif extension == ".c":
        files.append(name)
    elif extension == ".h":
        files.append(name)

def is_blank(line):
	line = line.replace('{', ' ')
	line = line.replace('}', ' ')
	if line.lstrip().startswith('//'):
		return True
	elif line.isspace():
		return True
	else:
		return False

total = 0
index = 1
for file_name in files:
	f = open(file_name, "r")
	n = 0
	for line in f:
		if not is_blank(line):
			n += 1
	print(str(index) + ") " + file_name + ": " + str(n))
	total += n
	index += 1

print("SUM: " + str(total))
EOF
endfunction
