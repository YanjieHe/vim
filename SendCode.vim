function SendCode()
	if &filetype == "python"
		call SendCodeToPython3()
	elseif &filetype == "r"
		call SendCodeToR()
	elseif &filetype == "julia"
		call SendCodeToJulia()
	else
		echo "Not supported filetype"	
		echo &filetype
	endif
endfunction
