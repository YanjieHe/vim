function CreateMethod()
python3 << EOF
import vim
import re

line_text = vim.eval("getline('.')")

row = int(vim.eval("getpos('.')[1]"))
col = int(vim.eval("getpos('.')[2]"))
end_row, end_col = vim.eval("searchpos(';')")

def get_class_name():
	class_row, class_col = vim.eval("searchpos('class')")
	class_name = vim.eval("getline({0})".format(class_row))

	index = class_name.find("class")
	class_name = class_name[index + 5:].lstrip()

	cursor = 0
	done = False
	print(class_name)
	while not done:
		if cursor >= len(class_name):
			done = True
		else:
			c = class_name[cursor]
			if c.isalnum() or c == "_":
				cursor += 1
			else:
				done = True
	return class_name[0:cursor]

class_name = get_class_name()

if end_row == 0 and end_col == 0:
	print("semicolon missing")
else:
	text = vim.eval("getline({0}, {1})".format(row, end_row))
	text = "\n".join(text)
	text = text[col - 1:]
	result = re.search(r"[0-9a-zA-Z|_]+\(", text)
	begin, end = result.span()
	text = text[0:begin] + class_name + "::" + text[begin:]
	text = text.rstrip(';')
	vim.command("call SwitchHeaderSource()")
	for line in text.splitlines():
		vim.command("call append(line('$'), '{0}')".format(line.rstrip('\n')))
	vim.command("call append(line('$'), '{')")
	vim.command("call append(line('$'), '')")
	vim.command("call append(line('$'), '}')")
EOF
endfunction
