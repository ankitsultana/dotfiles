execute pathogen#infect()

if has('gui_running')
	set background=light
else
	set background=dark
endif


"Basic Stuff
set encoding=utf8
filetype plugin indent on
syntax enable
filetype on
set nocompatible
set cursorline
set clipboard=unnamed

"Fast cursor movement
set ttyfast

"Scroll starts when about eight lines remain on top or bottom
set scrolloff=8

"Turn off audible bell
set visualbell

"Swap files are a pain
set noswapfile
set nobackup
set nowb


"Display the status line always
set laststatus=2

"Ruby hashrocket madness
nnoremap <leader>r :%s/:\(\w*\)\s*=>\s*/\1: /gc<cr>

"Setting tab to 2 spaces
set tabstop=2
set shiftwidth=2

"Indentation stuff
set smarttab
set autoindent

"Paste mode can be enabled using F2
set pastetoggle=<F2>

"Line numbers ought to be there
set ruler
set relativenumber


"Colors.. solarized ftw 
colorscheme solarized
"colorscheme lapis256
"colorscheme wells-colors
"colorscheme wolfpack
"colorscheme itg_flat
"colorscheme shades_of_teal

"GitGutter

"set incsearch
set hlsearch
set title

"Some stuff related to powerline
let g:airline#extensions#tabline#enabled=1
let g:airline_powerline_fonts=1
set guifont=Meslo\ LG\ S\ Regular\ for\ Powerline:h14

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

"	««««««		Custom Mappings			»»»»»»
"general mappings
nmap <C-Tab> :tabnext<CR>
nmap <C-S-Tab> :tabprevious<CR>
map <C-S-Tab> :tabprevious<CR>
map <C-Tab> :tabnext<CR>
imap <C-S-Tab> <ESC> :tabprevious<CR>
imap <C-Tab> <ESC> :tabnext<CR>
noremap <F7> :set expandtab!<CR>


"Rarely used stuff
nmap gO O<ESC>j
