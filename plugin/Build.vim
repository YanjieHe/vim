function Build()
	exec "write"
	if &filetype == "cpp"
		call BuildCpp()
	elseif &filetype == "tex"
		exec "!xelatex %"
	else
		exec "echo 'Not supported file type"
		exec "echo &filetype"
	endif
endfunction

function BuildCpp()
	if &filetype == "cpp"
		exec "!clear && cmake build/"
		make
	else
		echo "This is not a cpp file."
	endif
endfunction
