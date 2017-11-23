set nocompatible
set number
set autoindent
set cindent
set tabstop=4
set shiftwidth=4
set cursorline
"highlight CursorLine cterm=NONE ctermbg=black ctermfg=green guibg=NONE guifg=NONE
highlight CursorLine cterm=NONE ctermbg=black ctermfg=NONE guibg=NONE guifg=NONE
syntax on

autocmd BufRead,BufNewFile *.jl :set filetype=julia

"colorscheme freya

augroup Gvim
	if has('gui_running')
		colorscheme freya
		set guifont=Fantasque\ Sans\ Mono\ 14
	endif
augroup end

augroup Vundle
	filetype off

	" set the runtime path to include Vundle and initialize
	set rtp+=~/.vim/bundle/Vundle.vim
	call vundle#begin()

	" let Vundle manage Vundle, required
	Plugin 'VundleVim/Vundle.vim'

	call vundle#end()
	filetype plugin indent on
augroup end

augroup NerdTree
	Plugin 'The-NERD-tree'
	nn <silent><F3> :exec("NERDTree ".expand('%:h'))<CR>
augroup end

augroup Powerline
	Plugin 'vim-powerline'
	set laststatus=2
	set t_Co=256
	let g:Powerline_symbols='unicode'
	set encoding=utf8
augroup end

augroup SnipMate
	Plugin 'msanders/snipmate.vim'
augroup end

" source ~/.vim/BuildAndRun.vim
" source ~/.vim/Build.vim
" source ~/.vim/SendCode.vim
" source ~/.vim/tmux/SendCodeToTmux.vim
" source ~/.vim/python/SendCodeToPython3.vim
" source ~/.vim/r/SendCodeToR.vim
" source ~/.vim/julia/SendCodeToJulia.vim
" source ~/.vim/racket/SendCodeToRacket.vim
" source ~/.vim/cpp/BuildCpp.vim
" source ~/.vim/cpp/SwitchHeaderSource.vim
" source ~/.vim/cpp/FindClass.vim
" source ~/.vim/cpp/CreateCppClass.vim
" source ~/.vim/cpp/Beautifier.vim
" source ~/.vim/cpp/CountLinesOfCode.vim
" source ~/.vim/cpp/CreateMethod.vim

map <F4> : call SwitchHeaderSource()<CR>
map <F5> : call BuildAndRun()<CR>
map <F6> : call Build()<CR>
"map <F7> : call Beautifier()<CR>
"map <F9> : call SendCode()<CR> : <CR><CR>
nmap <F9> : call SendCodeLineToTmux()<CR>

"map <leader>fc : call FindClass()<CR>
"map <leader>cm : call CreateMethod()<CR>
