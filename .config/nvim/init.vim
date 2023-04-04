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
set cc=120                  " set an 80 column border for good coding style
filetype plugin indent on   " allows auto-indenting depending on file type
syntax on                   " syntax highlighting
let g:mapleader = ','       " custom command leading key

"plugins
call plug#begin(stdpath('data') . '/plugged')

"Coc
Plug 'neoclide/coc.nvim', {'branch': 'release'}
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

"Auto Pair
Plug 'jiangmiao/auto-pairs'

"Sandwich
Plug 'machakann/vim-sandwich'

"Dogrun color scheme
Plug 'wadackel/vim-dogrun'

"Python autocomplete                                                                                                    
Plug 'davidhalter/jedi-vim'

Plug 'folke/tokyonight.nvim', { 'branch': 'main' }

Plug 'preservim/nerdtree'

call plug#end()

"Greeting
echo ">^.^<"

"Capitalize word
inoremap <leader>u <esc>gUiw$a
"Enter normal mode
inoremap jk <esc> 
vnoremap <leader>e <esc> 

"Escape from terminal
tnoremap <esc> <C-\><C-n>
tnoremap <leader>e <C-\><C-n>

""Window moving
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

"NERDTree mappings
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" Start NERDTree and put the cursor back in the other window.
autocmd VimEnter * NERDTree | wincmd p

"Color scheme

colorscheme tokyonight
