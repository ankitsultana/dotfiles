execute pathogen#infect()
filetype plugin indent on
set laststatus=2
set tabstop=4
"set incsearch
set smarttab
set autoindent
set shiftwidth=4
set hlsearch
set title
set pastetoggle=<F2>
"Mapping for saving 
"Some stuff related to powerline
let g:airline#extensions#tabline#enabled = 1
"let g:Powerline_symbols='fancy'
let g:airline_powerline_fonts = 1
set guifont=Meslo\ LG\ S\ Regular\ for\ Powerline:h20
"Stuff ends here
set nocompatible
set relativenumber
syntax on
"Unicode symbols
"let g:airline_left_sep='»'
"let g:airline_left_sep='▶'
"let g:airline_right_sep='«'
"let g:airline_right_sep='◀'
"let g:airline_symbols.linenr='␊'
"let g:airline_symbols.linenr='␤'
"let g:airline_symbols.linenr='¶'
"let g:airline_symbols.branch='⎇'
"let g:airline_symbols.paste='ρ'
"let g:airline_symbols.paste='Þ'
"let g:airline_symbols.paste='∥'
"let g:airline_symbols.whitespace='Ξ'

"Unmap the arrow keys
no <down> ddp
no <left> <Nop>
no <right> <Nop>
no <up> ddkP
ino <down> <Nop>
ino <left> <Nop>
ino <right> <Nop>
ino <up> <Nop>
vno <down> <Nop>
vno <left> <Nop>
vno <up> <Nop>

"==========================	Custom Mappings	   ================
"general mappings
nmap <C-Tab> :tabnext<CR>
nmap <C-S-Tab> :tabprevious<CR>
map <C-S-Tab> :tabprevious<CR>
map <C-Tab> :tabnext<CR>
imap <C-S-Tab> <ESC> :tabprevious<CR>
imap <C-Tab> <ESC> :tabnext<CR>
noremap <F7> :set expandtab!<CR>


"Sometimesss
nmap gO O<ESC>j
