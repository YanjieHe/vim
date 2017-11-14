function SendCodeToPython3()
if &filetype == "python"
python3 << EOF
import vim
import os
code = vim.eval('@"')
last_line = ""
for line in code.splitlines():
	os.system("tmux send-keys -t 'python3' '{0}' C-m".format(line))
	last_line = line

if last_line.startswith(" "):
	os.system("tmux send-keys -t 'python3' '' C-m".format(line))
EOF
endif
endfunction
