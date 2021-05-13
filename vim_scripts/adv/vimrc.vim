"VUNDLE CODE #####################################################################################
set nocompatible															"required
filetype on																		"required
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()														"to install a plugin add it here and run :PluginInstall
	Plugin 'VundleVim/Vundle.vim'								"vundle
	Plugin 'bronson/vim-trailing-whitespace'		"causes all trailing whitespace to be highlighted in red
	Plugin 'jiangmiao/auto-pairs'								"auto complete pairs of '' []  {}
	Plugin 'scrooloose/nerdcommenter'						"commenting
call vundle#end()															"to remove a plugin comment it and run :PluginClean

filetype plugin indent on											"required
filetype plugin on														"required for nerdcommenter
"END VUNDLE CODE ##################################################################################


"show CR in CFLF as ^M
"just uncomment only when required
"else it show warnings
"you can run as :e ++ff=unix
"e ++ff=unix

"use mouse in vim
	set mouse=a
	"this also helps in resizing the split window
	"some say to use
	"set mouse=n
	"set ttymouse=xterm2

"Auto close brackets
	let g:AutoPairsFlyMode = 1
	let g:AutoPairsShortcutBackInsert = '<M-b>'
	set showmatch
	let g:AutoPairsShortcutToggle='<Leader>a' "toggle Auto Pairs
	"let g:AutoPairs={'(':')', '[':']', '{':'}',"'":"'",'"':'"', '`':'`'}