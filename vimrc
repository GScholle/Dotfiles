
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
"set nowrap "don't wrap lines
"set tabstop=4 " at tab is four spaces
set backspace=indent,eol,start "allow backspacing over everything in insert mode
set autoindent  "always set autoindenting on
set copyindent "copy the provious indentation on autoindenting
set shiftwidth=4 "number of spaces to use for autoindenting
set showmatch " set show matching parenthesis	
"Use to disable the search higlighting:
nnoremap <leader><space> :noh<cr>
"changes the completion behaviour with <tab>
set wildmenu
set wildmode=list:longest
"handle long linees correctly:
"ttp://stevelosh.com/blog/2010/09/coming-home-to-vim/#why-i-switched-to-textmate
set wrap
set textwidth=79
set formatoptions=qrn1
set colorcolumn=85

"sets the match bracket paris to the tab key:
nnoremap <tab> %
vnoremap <tab> %

"set number system:
set relativenumber "show relative line numbers	
set number " show absolute line numbers	
set ruler
"" show absolute line numbers when in insert mode
" http://jeffkreeftmeijer.com/2012/relative-line-numbers-in-vim-for-super-fast-movement/
autocmd InsertEnter,WinLeave,FocusLost * silent! :set norelativenumber
autocmd InsertLeave,BufNewFile,VimEnter,WinEnter,FocusGained  * silent! :set relativenumber

set ignorecase 
"found on: http://nvie.com/posts/how-i-boosted-my-vim/:

set smartcase " ignor case if search pattern is all lowercase, case sensetive otherwise
set smarttab " insert tabs on the start of a line according to shiftwidth, not tabstop
set incsearch " show search matches as you type

"alter the undo behaviour
set history=1000 "remember more commands and search history
set undofile
set undodir=~/.vim/undo
set undolevels=1000 "mincrease levels of undo
set undoreload=1000

"use gundo http://sjl.bitbucket.org/gundo.vim/
nnoremap <F5> :GundoToggle<CR>

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

"trick for forgotten 'sudo' before edition:
cmap w!! w !sudo tee % >/dev/null

"Hardmode plugin:
" the expressions are: :call HardMode() and :call EasyMode()
" Enabled by defaul
autocmd VimEnter,BufNewFile,BufReadPost * silent! call HardMode()
"tooggles Hardmode plugin:
nnoremap <leader>h <Esc>:call ToggleHardMode()<CR>
set list
set listchars=tab:>-,extends:#,trail:'
