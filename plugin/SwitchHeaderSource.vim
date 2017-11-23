function CurrentFile()
	return expand('%:t')
endfunction

function CurrentPath()
	return expand('%:h')
endfunction

function PathExtension()
	return expand('%:e')
endfunction

function FileName()
	return expand('%:t:r')
endfunction

function OpenFile(fileName)
	if !empty(bufname(a:fileName))
		execute "buffer " . a:fileName
	else
		execute "edit " . a:fileName
	endif
endfunction

function FileExists(fileName)
	return !empty(glob(a:fileName))
endfunction

function SwitchHeaderSource()
	let l:extension = PathExtension()
	let l:fileName = FileName()

	if l:extension == "cpp" || l:extension == "c"
		if FileExists(l:fileName . ".h")
			call OpenFile(l:fileName . ".h")
		elseif FileExists(l:fileName . ".hpp")
			call OpenFile(l:fileName . ".hpp")
		else
			echo "Header file missing"
		endif
	elseif l:extension == "h" || l:extension == "hpp"
		if FileExists(l:fileName . ".c")
			call OpenFile(l:fileName . ".c")
		elseif FileExists(l:fileName . ".cpp")
			call OpenFile(l:fileName . ".cpp")
		else
			echo "Source file missing"
		endif
	endif
endfunction
