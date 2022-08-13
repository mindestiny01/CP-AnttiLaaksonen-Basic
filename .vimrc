set encoding=UTF-8
set exrc
set nocompatible
set rtp+=$HOME/.vim/bundle/Vundle.vim
call vundle#begin('$HOME/.vim/bundle/')

" ============================ Plugins =============================

Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-scripts/L9'
Plugin 'tpope/vim-fugitive'
Plugin 'rstacruz/sparkup', {'rtp':'vim'}
Plugin 'scrooloose/nerdtree'
Plugin 'joshdick/onedark.vim'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'tpope/vim-commentary'
Plugin 'scrooloose/syntastic'
Plugin 'christoomey/vim-conflicted'
Plugin 'jacoborus/tender.vim'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'mattn/emmet-vim'
Plugin 'sjl/gundo.vim'
Plugin 'easymotion/vim-easymotion'
Plugin 'tpope/vim-surround'
Plugin 'kien/ctrlp.vim'
Plugin 'godlygeek/tabular'
Plugin 'itchyny/lightline.vim'

" =========== Themes Plugins =============

Plugin 'morhetz/gruvbox'

" =========== End Themes Plugins =========

" ============ Syntax Plugins ==============

Plugin 'mitsuhiko/vim-jinja'

" =========== End Syntax Plugins ===========


" ============================ End Plugins =========================

call vundle#end()
filetype plugin indent on

" =================== NERDTREE
let NERDTreeIgnore = ['__pycache__', '\.pyc$', '\.o$', '\.so$', '\.a$', '\.swp', '*\.swp', '\.swo', '\.swn', '\.swh', '\.swm', '\.swl', '\.swk', '\.sw*$', '[a-zA-Z]*egg[a-zA-Z]*', '.DS_Store']

let NERDTreeShowHidden=1
let g:NERDTreeWinPos="left"
let g:NERDTreeDirArrows=0
map <C-t> :NERDTreeToggle<CR>


" ================== Syntastic
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
-- let g:syntastic_javascript_checkers = ['eslint']
-- let g:syntastic_javascript_mri_args = "--config=$HOME/.jshintrc"
let g:syntastic_python_checkers = [ 'pylint', 'flake8', 'python' ]
-- let g:syntastic_yaml_checkers = ['jsyaml']
-- let g:syntastic_html_tidy_exec = 'tidy5'
let g:syntastic_python_flake8_config_file='.flake8'


" ================= flake8
let g:flake8_show_in_file=1

" ================= snippets
" if you want :UltiSnipsEdit to split your windows
let g:UltiSnipsEditSplit="vertical"

" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:ycm_semantic_triggers =  { 'c' : ['->', '.', '::', 're!gl'], 'objc': ['->', '.', 're!\[[_a-zA-Z]+\w*\s', 're!^\s*[^\W\d]\w*\s'] }
let g:SuperTabDefaultCompletionType = '<C-n>'

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"


" ========= Easymotion
let g:EasyMotion_do_mapping = 0
let g:EasyMotion_smartcase = 1
nmap f <Plug>(easymotion-s)


" ==== KEYMAPPING =====
inore <C-k> <Esc>
nnore %ya gg"*yG
nnoremap "pf "*p
" ==== KEYMAPPING END ====

" ==== FONT SETTINGS ====
if has("gui_running")
  if has("gui_gtk2")
    set guifont=Inconsolata\ 12
  elseif has("gui_macvim")
    set guifont=Menlo\ Regular:h14
  elseif has("gui_win32")
    set guifont=Consolas:h11:cANSI
  endif
endif
" ==== FONT SETTINGS END =====


" ================== General Settings ======================

syntax on
"set fillchars+=vert:\|
"colorscheme molokai
"set background=dark
"set hidden
"set laststatus=2
"set st=4 sw=4 et
"backspace=indent,eol,start
"let g:vim_json_syntax_conceal = 0
"set colorcolumn=80
":set guioptions-=m  "remove menu bar
":set guioptions-=T  "remove toolbar
":set guioptions-=r  "remove right-hand scroll bar
":set guioptions-=L  "remove left-hand scroll bar
":set lines=999 columns=999
set nu
set clipboard=unnamedplus
set mouse=a
set tabstop=4
set autoindent
set shiftwidth=2
set softtabstop=2
"set smarttab
set expandtab
set smartcase
set smartindent
set number
set ruler
set relativenumber
set autoread
set statusline=Welcome,mindestiy19!

" ===================== End General Settings ================

" =============== Lightline Settings ==============
" let g:lightline = { 'colorscheme': 'solarized dark' }

" ============== End Lightline Settings =============

" ===================== Template Settings ======================
:autocmd filetype cpp nnoremap <F5> :w <bar> !g++ -ulimit -Wall -Wno-unused-result -std=c++17   -O2   % -o %:r && %:r <CR>
:autocmd filetype cpp nnoremap <F6> :w <bar> !g++ -ulimit -Wall -Wno-unused-result -std=c++17   -O2   % -o %:r && %:r.exe < in <CR>

autocmd filetype java nnoremap <F5> :w <bar> !javac % && java -enableassertions %:r <CR>
autocmd filetype python nnoremap <F5> :w <bar> !python % <CR>
-- autocmd filetype perl nnoremap <F5> :w <bar> !perl % <CR>
-- autocmd filetype go nnoremap <F5> :w <bar> !go build % && ./%:r <CR>
