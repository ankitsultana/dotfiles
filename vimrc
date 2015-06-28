execute pathogen#infect()

" ««««««  Leader  »»»»»»
"=======================

:let mapleader=","

" ««««««  Change anyone to dark as you prefer  »»»»»»
"====================================================

if has('gui_running')
	set background=light
else
	set background=dark
endif

" ««««««  Spell check stuff  »»»»»»
"==================================

if !did_filetype()
	set spell spelllang=en_us
endif

nnoremap <leader>sp :call FixLastSpellingError()<cr>

"Function to wrap things up
function! FixLastSpellingError()
	normal! mm[s1z=`m
endfunction

"get template for hashing questions
function! HashingTemplate()
	echom "Working"	
endfunction

" «««««««  Commenting Code according to file type  »»»»»»
"========================================================

augroup comment
	autocmd FileType python nnoremap <buffer> <leader>c mm^i#<esc>`ml
	autocmd FileType python nnoremap <buffer> <leader>C mm^vd`mh

	autocmd FileType javascript nnoremap <buffer> <leader>c mm^i//<esc>`mll
	autocmd FileType javascript nnoremap <buffer> <leader>C mm^vld`mhh

	autocmd FileType cpp nnoremap <buffer> <leader>c mm^i//<esc>`mll
	autocmd FileType cpp nnoremap <buffer> <leader>C mm^vld`mhh

	autocmd FileType vim nnoremap <buffer> <leader>c mm^i"<esc>`ml
	autocmd FileType vim nnoremap <buffer> <leader>C mm^vd<esc>`mh

	autocmd FileType ruby nnoremap <buffer> <leader>c mm^i#<esc>`ml
	autocmd FileType ruby nnoremap <buffer> <leader>C mm^vd`mh
	
augroup END

" ««««««  Awesome and Non Conventional Mappings  »»»»»»
"======================================================

"Switch between split panes in normal mode using Backspace
nnoremap <bs> <c-w>w

"Another
nnoremap <D-]> <c-w>w

"Type asd in insert mode to go to normal mode.. 
inoremap asd <Esc>	

"Center in on the line where the search element is found
nnoremap N Nzz						

"Same
nnoremap n nzz						

"Open vimrc in a split to quickly make changes
nnoremap <leader>ev :vsplit $MYVIMRC<cr>

"Source vimrc quickly
noremap <leader>sv :source $MYVIMRC<cr>

"Quote the selected WORD
nnoremap <leader>" viw<esc>a"<esc>hbi"<esc>lel
nnoremap <leader>' viw<esc>a'<esc>hbi'<esc>lel

"Faster set paste
nnoremap <leader>p :set paste<cr>
nnoremap <leader>P :set nopaste<cr>

" ««««««  Movement Mappings  »»»»»»
"==================================

"Doing stuff inside parens
onoremap p i(
onoremap in( :<c-u>normal! f(vi(<cr>
"if (x < y)

" ««««««  Basic Stuff  »»»»»»
"============================

set encoding=utf8
set visualbell
syntax enable
filetype plugin indent on
filetype on
set nocompatible

"For windows users. Doesn't do anything for others
set clipboard=unnamed

" ««««««  Abbreviations  »»»»»»
"==============================

"c++ stuff
iabbrev vitr vector<int>::iterator
iabbrev litr list<int>::iterator
iabbrev vltr vector<LL>::iterator
iabbrev lltr list<LL>::iterator
iabbrev sitr set<int>::iterator
iabbrev sltr set<LL>::iterator

"General
iabbrev mygmail ankitsultana@gmail.com

"Sample text lorem ipsum dolor

" ««««««  SETTERS  »»»»»»
"========================

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
"===========================================

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
