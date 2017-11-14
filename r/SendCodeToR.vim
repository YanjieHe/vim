function SendCodeToR()
if &filetype == "r"
python3 << EOF
import vim
import os
code = vim.eval('@"')
last_line = ""
for line in code.splitlines():
	os.system("tmux send-keys -t 'R' '{0}' C-m".format(line))
	last_line = line
EOF
endif
endfunction
