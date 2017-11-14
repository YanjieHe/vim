function SendCodeToJulia()
if &filetype == "julia"
python3 << EOF
import vim
import os
code = vim.eval('@"')
for line in code.splitlines():
	os.system("tmux send-keys -l '{0}'".format(line))
	os.system("tmux send-keys C-m".format(line))
EOF
endif
endfunction
