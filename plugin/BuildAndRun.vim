function BuildAndRun()
	exec "write"
	if &filetype == "python"
		setlocal makeprg=python3 -u
		make %
	elseif &filetype == "scheme"
		exec "!racket %"
	elseif &filetype == "julia"
		exec "!julia %"
	elseif &filetype == "gnuplot"
		exec "!gnuplot --persist -c %"
	else
		echo "Not supported file type: " . &filetype
	endif
endfunction
