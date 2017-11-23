function BuildAndRun()
	exec "write"
	if &filetype == "python"
		exec "!python3 %"
	elseif &filetype == "scheme"
		exec "!racket -f %"
	elseif &filetype == "julia"
		exec "!julia %"
	elseif &filetype == "cpp"
		call BuildCpp()
		exec "!python3 ~/.vim/cpp/RunCppProject.py"
	elseif &filetype == "gnuplot"
		exec "!gnuplot --persist -c %"
	else
		exec "echo 'Not supported file type'"
		exec "echo &filetype"
	endif
endfunction
