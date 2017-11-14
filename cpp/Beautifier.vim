function! Beautifier()
if &filetype == "cpp"
python3 << EOF
import vim
name = vim.eval("expand('%')")
line = vim.eval("line('.')")

vim.command("bprevious")
vim.command("bwipe " + name)
vim.command("!clang-format -i -style=file " + name)
vim.command("edit " + name)
vim.eval("setpos('.', [0, {0}, 0, 0])".format(line))

EOF
endif
endfunction
