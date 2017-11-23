function Beautifier()
	if &filetype == "cpp"
		let l:name = expand('%')
		let l:line = line('.')
		bprevious
		execute "bwipe " . l:name 
		execute "!clang-format -i -style=file " . l:name
		execute "edit " . l:name
		call setpos('.', [0, l:line, 0, 0])
	else
		normal gg=G
	endif
endfunction
