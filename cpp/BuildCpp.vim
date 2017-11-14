function BuildCpp()
	if &filetype == "cpp"
		exec "!cmake build/"
		exec "make"
	else
		echo "This is not a cpp file."
	endif
endfunction
