set autoindent
set smartindent
set shiftwidth=4
set expandtab
set tabstop=4
set listchars=tab:>-
set list
set nu

"set cursor line
hi CursorLine cterm=bold ctermbg=darkgrey
set cursorline!

"keep cursor away from top and bottom of screen (to keep at center set value to 999)
set scrolloff=4

"searching
set hlsearch "highlight search
set incsearch "highlight as we type in search
nnoremap <CR> :noh<CR><CR>