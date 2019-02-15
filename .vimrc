syntax on
set nocompatible
colorscheme desert
set clipboard=unnamed

"turn on incremental search
set incsearch

"turn on search highlighting
set hlsearch

"ignore case when searching
set ignorecase

"allow hidden buffers
set hidden

"tabs to spaces
set expandtab

"tabwidth
set tabstop=4
set softtabstop=4
set shiftwidth=4

"Show line numbers
set number

"Show hidden chars
set list listchars=eol:$,tab:>-,trail:.,extends:>,precedes:<

"set leader to space key
map <SPACE> <leader>

"set tab to cycle buffers
nnoremap <TAB> :b#<CR>
nnoremap gb :bnext<CR>
nnoremap gB :bprevious<CR>

"commands
command! -range Xmlformat <line1>,<line2>!xmllint --format -
command! -range Jsonformat <line1>,<line2>!python -m json.tool

"leader mappings
nnoremap <leader>b :buffers<CR>:b
nnoremap <leader>; mmA;<C-c>`m
nnoremap <leader>x :1,$Xmlformat<CR>
vnoremap <leader>x :'<,'>Xmlformat<CR>
nnoremap <leader>j :1,$Jsonformat<CR>
vnoremap <leader>j :'<,'>Jsonformat<CR>

"XML file settings
augroup XML
    autocmd!
    autocmd FileType xml setlocal tabstop=2 softtabstop=2 shiftwidth=2
    autocmd FileType xml setlocal foldmethod=indent foldlevelstart=999 foldminlines=0
augroup END

"puppet file settings
au BufRead,BufNewFile *.pp
    \ set filetype=puppet

filetype plugin indent on

"pathogen
execute pathogen#infect()
