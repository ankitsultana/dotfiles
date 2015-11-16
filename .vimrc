execute pathogen#infect()

colorscheme solarized

set colorcolumn=160

set backspace=indent,eol,start

" ««««««  Standard Javascript »»»»»»
" Check http://github.com/feross/standard
"==================================

let g:syntastic_javascript_checkers = ['standard']
autocmd FileType javascript set tabstop=2
autocmd FileType javascript set expandtab
autocmd FileType javascript retab

"Use tab for auto-complete
"=========================
function! Tab_Or_Complete()
  if col('.')>1 && strpart( getline('.'), col('.')-2, 3 ) =~ '^\w'
    return "\<C-N>"
  else
    return "\<Tab>"
  endif
endfunction
inoremap <Tab> <C-R>=Tab_Or_Complete()<CR>
set dictionary="/usr/dict/words"

"Use j and k to traverse through auto-complete suggestions
"=========================================================
inoremap <expr> j ((pumvisible())?("\<C-n>"):("j"))
inoremap <expr> k ((pumvisible())?("\<C-p>"):("k"))

"Compiling c++ in one click
"======================

set makeprg=g++\ -o\ \"%:p:r\"\ \"%:p\"
map <F9> :w<CR>:!clear<CR>:make<CR>
inoremap <F9> <ESC>:w<CR>:!clear<CR>:make<CR>
map <F5> :!clear<CR>:!%:p:r<CR>

" Smart Brackets Mapping
"==================

inoremap {<CR> {<CR>  <CR>}<up><right>

" ««««««  Toggle color scheme using a mapping  »»»»»»
"====================================================

function! BgToggleSol()
	if &background == "light"
		execute ":set background=dark"
	else
		execute ":set background=light"
	endif
endfunction

nnoremap qwer :call BgToggleSol()<cr>

" ««««««  Paste in insert mode without having to worry about set paste  »»»»»»
"=============================================================================

if &term =~ "xterm.*"
    let &t_ti = &t_ti . "\e[?2004h"
    let &t_te = "\e[?2004l" . &t_te
    function! XTermPasteBegin(ret)
        set pastetoggle=<Esc>[201~
        set paste
        return a:ret
    endfunction
    map <expr> <Esc>[200~ XTermPasteBegin("i")
    imap <expr> <Esc>[200~ XTermPasteBegin("")
    cmap <Esc>[200~ <nop>
    cmap <Esc>[201~ <nop>
endif

" ««««««  Leader  »»»»»»
"=======================

let mapleader=","

" ««««««  Change anyone to dark as you prefer  »»»»»»
"====================================================

if has('gui_running')
	set background=dark
else
	set background=light
endif

" ««««««  Spell check stuff  »»»»»»
"==================================

" Turn ON only for text files, change text to *
" If you want it ON for all file types

autocmd FileType text set spell spelllang=en_us

nnoremap <leader>sp :call FixLastSpellingError()<cr>

"Function to wrap things up
function! FixLastSpellingError()
	normal! mm[s1z=`m
endfunction

"get template for hashing questions
function! HashingTemplate()
	echom "Work in progress, Truth is I am too lazy"
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

"Ditch Relative line numbers.. To jump to say x-th line.. in normal mode do:
"		»» 	123<cr>
nnoremap <cr> G

"Switch between split panes in normal mode using Backspace
nnoremap <bs> <c-w>w

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

" ««««««  Movement Mappings  »»»»»»
"==================================

"Doing stuff inside parentheses
onoremap p i(
onoremap in( :<c-u>normal! f(vi(<cr>

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
set tabstop=4
set shiftwidth=4

"Indentation stuff
set smarttab
set autoindent
set smartindent

"Paste mode can be enabled using F2
set pastetoggle=<F2>

"Line numbers ought to be there
set ruler
set relativenumber
set number

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
