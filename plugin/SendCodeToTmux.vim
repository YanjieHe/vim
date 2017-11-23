function! SendCodeLineToTmux()
if &filetype == "python" || &filetype == "r" || &filetype == "julia"
python3 << EOF
import os
import vim
line = vim.eval("getline('.')")
os.system("tmux send-keys -l '{0}'".format(line))
os.system("tmux send-keys C-m")
EOF
	call cursor(line('.') + 1, 1)
else
	echo "Not supported filetype" . &filetype
endif
endfunction
