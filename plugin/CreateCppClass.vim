function CreateCppClass(className)
	call CreateCppHeaderFile(a:className)
	call CreateCppSourceFile(a:className)
endfunction

function CreateCppHeaderFile(className)
	execute "edit " . a:className . ".h"
	call setline(".", "#ifndef " . toupper(a:className) . "_H")
	call setline(line(".") + 1, "#define " . toupper(a:className) . "_H")
	call setline(line(".") + 2, "")
	call setline(line(".") + 3, "class " . a:className)
	call setline(line(".") + 4, "{")
	call setline(line(".") + 5, "  public:")
	call setline(line(".") + 6, "    " . a:className . "();")
	call setline(line(".") + 7, "};")
	call setline(line(".") + 8, "")
	call setline(line(".") + 9, "#endif // " . toupper(a:className) . "_H ")
	write
endfunction

function CreateCppSourceFile(className)
	execute "edit " . a:className . ".cpp"
	call setline(".", '#include "' . a:className . '.h"')
	call setline(line(".") + 1, "")
	call setline(line(".") + 2, a:className . "::" . a:className . "()")
	call setline(line(".") + 3, "{")
	call setline(line(".") + 4, "}")
	write
endfunction
