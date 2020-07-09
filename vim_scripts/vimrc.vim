"Vundle code
set nocompatible                    		    "be iMproved, required
filetype on                        		        "required
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
    Plugin 'VundleVim/Vundle.vim'       		"vundle
    Plugin 'bronson/vim-trailing-whitespace'	"causes all trailing whitespace to be highlighted in red
    Plugin 'jiangmiao/auto-pairs'       		"auto complete pairs of '' []  {}
    Plugin 'scrooloose/nerdcommenter'           "commentin


    "to remove a plugin comment it and run :PluginClean
call vundle#end()                   		    "required
filetype plugin indent on           		    "required
filetype plugin on                              "required for nerdcommenter
"end Vundle code


"NORMAL CONFIG
    set autoindent
    set smartindent

    set shiftwidth=4
    set expandtab
    set tabstop=4


"set cursor line
    hi CursorLine   cterm=bold ctermbg=darkgrey
    set cursorline!


"relative numbering in lines
    set nu
    "set relativenumber


"keep cursor away from top and bottom of screen
"to keep at center set value to 999
    set scrolloff=4


"use mouse in vim
    set mouse=a
    "this also helps in resizing the split window
    "some say to use
    "set mouse=n
    "set ttymouse=xterm2


"searching
    set hlsearch "highlight search
    set incsearch "highlight as we type in search
    nnoremap <CR> :noh<CR><CR>


"Auto close brackets
    let g:AutoPairsFlyMode = 1
    let g:AutoPairsShortcutBackInsert = '<M-b>'
    set showmatch
    let g:AutoPairsShortcutToggle='<Leader>a' "toggle Auto Pairs
    "let g:AutoPairs={'(':')', '[':']', '{':'}',"'":"'",'"':'"', '`':'`'}