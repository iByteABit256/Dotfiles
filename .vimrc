"set nocompatible            " disable compatibility to old-time vi
set showmatch               " show matching brackets.
set ignorecase              " case insensitive matching
set mouse=v                 " middle-click paste with mouse
set hlsearch                " highlight search results
set tabstop=4               " number of columns occupied by a tab character
set softtabstop=4           " see multiple spaces as tabstops so <BS> does the right thing
set expandtab               " converts tabs to white space
set shiftwidth=4            " width for autoindents
set autoindent              " indent a new line the same amount as the line just typed
set number                  " add line numbers
set wildmode=longest,list   " get bash-like tab completions
set cc=80                   " set an 80 column border for good coding style
filetype plugin indent on   " allows auto-indenting depending on file type
syntax on                   " syntax highlighting
let g:mapleader = ','       " custom command leading key

"plugins
call plug#begin('~/.vim/plugged')

"Auto Pair
Plug 'jiangmiao/auto-pairs'

"Sandwich
Plug 'machakann/vim-sandwich'

"Dogrun color scheme
Plug 'wadackel/vim-dogrun'

"Tokyonight
Plug 'ghifarit53/tokyonight-vim'

set termguicolors

let g:tokyonight_style = 'storm' " available: night, storm
let g:tokyonight_enable_italic = 1

call plug#end()

"Capitalize word
inoremap <leader>u <esc>gUiw$a
"Enter normal mode
inoremap jk <esc> 
vnoremap <leader>e <esc> 

"Window moving
function! WinMove(key)
    let t:curwin = winnr()
    exec "wincmd ".a:key
    if (t:curwin == winnr())
        if (match(a:key,'[jk]'))
            wincmd v
        else
            wincmd s
        endif
        exec "wincmd ".a:key
    endif
endfunction

nnoremap <silent> <C-h> :call WinMove('h')<CR>
nnoremap <silent> <C-j> :call WinMove('j')<CR>
nnoremap <silent> <C-k> :call WinMove('k')<CR>
nnoremap <silent> <C-l> :call WinMove('l')<CR>

"Color scheme

colorscheme tokyonight

call plug#end()

