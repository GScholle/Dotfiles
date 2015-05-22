"Activate vimlatex:
filetype plugin on
if has('gui_running')
  set grepprg=grep\ -nH\ $*
  filetype indent on
  let g:tex_flavor='latex'
endif
filetype plugin on
au BufEnter *.tex set autowrite
let g:Tex_DefaultTargetFormat = 'pdf'
let g:Tex_MultipleCompileFormats = 'pdf'
let g:Tex_CompileRule_pdf = 'pdflatex -interaction=nonstopmode $*'
let g:Tex_GotoError = 0
let g:Tex_ViewRule_pdf = 'zathura'

"set the enviroment (ruler, etc):
set noexrc
set nocompatible
set hlsearch 
syntax on
set wildignore=*.o,*.obj,*.bak,*.exe


"found on: http://nvie.com/posts/how-i-boosted-my-vim/:
set nowrap "don't wrap lines
set tabstop=4 " at tab is four spaces
set backspace=indent,eol,start "allow backspacing over everything in insert mode
set autoindent "always set autoindenting on
set copyindent "copy the provious indentation on autoindenting
set number "always show line numbers
set shiftwidth=4 "number of spaces to use for autoindenting
set showmatch " set show matching parenthesis	
"set ignorecase
set smartcase " ignor case if search pattern is all lowercase, case sensetive otherwise
set smarttab " insert tabs on the start of a line according to shiftwidth, not tabstop
set incsearch " show search matches as you type

set history=1000 "remember more commands and search history
set undolevels=1000 "mincrease levels of undo
set title " change the terminals ttle
set noerrorbells "don't beep

"IMPORTANT: Pase-toogle switches to pase mode to paste texts; deactivate with
"same keypress again:
set pastetoggle=<F2>

"atuowirte/load folts:
autocmd BufWinLeave ?* mkview
autocmd BufWinEnter ?*  silent loadview

"use pathogen:
execute pathogen#infect() 

"use gundo http://sjl.bitbucket.org/gundo.vim/
nnoremap <F5> :GundoToggle<CR>
