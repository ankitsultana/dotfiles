execute pathogen#infect()

"Change anyone to dark as you prefer
if has('gui_running')
	set background=light
else
	set background=light
endif

"Awesome and Non Conventional Mappings 

inoremap asd <Esc>				"Type asd in insert mode to go to normal mode.. 
nnoremap N Nzz						"Center in on the line where the search element is found
nnoremap n nzz						"Same

"Basic Stuff
set encoding=utf8
set visualbell
syntax enable
filetype plugin indent on
filetype on
set nocompatible
set clipboard=unnamed

"Cursor Lines are good especially with solarized
set cursorline

"Say no to swap files
set noswapfile
set nobackup
set nowb

"This is just awesome, Scroll starts when cursor is 8 lines away from top/bottom
set scrolloff=8

"Set fast cursor
set ttyfast

"Show commands
set showcmd

"Display the status line always
set laststatus=2

"let g:solarized_termcolors= 256

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

colorscheme solarized
"colorscheme lapis256
"colorscheme wells-colors
"colorscheme wolfpack
"colorscheme itg_flat
"colorscheme shades_of_teal

"Incremental search is good
set incsearch

"Highlight search elements
set hlsearch
set title

"PowerLine related stuff
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

"	««««««		Custom Mappings(Harmless)			»»»»»»
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
