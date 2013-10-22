" Note: These lines must come first!
set nocompatible
filetype off

"
" VUNDLE BUNDLES
"
" Note: These lines allow vundle to work. On a new installation,
"       you may get the message saying vundle#rc() is not defined.
"       In this case, run:
"
"           git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
"
"       This is from https://github.com/gmarik/vundle
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..
"
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'
" BEGIN: Vundle bundles
Bundle 'https://github.com/ciaranm/inkpot.git'
Bundle 'https://github.com/cespare/zenburn.git'
" END: Vundle bundles




"
" TAB & INDENT BEHAVIOR
"
filetype plugin indent on
let s:tabsize=2
set expandtab
execute "set tabstop=".s:tabsize
execute "set shiftwidth=".s:tabsize
execute "set softtabstop=".s:tabsize
set autoindent smartindent
autocmd FileType Makefile set noexpandtab


"
" SYNTAX HIGHLIGHTING & COLOR SCHEME
"
syntax on
filetype on
if has('gui_running')
  " gvim only
  set lines=65
  colorscheme desert
endif


"
" SEARCHING
"
set ignorecase smartcase


"
" WHITESPACE & FORMATTING
"
set list listchars=tab:»\ ,trail:·
hi SpecialKey ctermfg=Red


"
" MISC
"
set encoding=utf8
set nowrap


"
" BACKUP FILES & SWAPFILES
" Save with full path in .vim directories.
"
set directory=~/.vim/swap//,/tmp//,.
set backupdir=~/.vim/backup//,/tmp//,.

"
" GOOGLE-SPECIFIC STUFF
"

if filereadable("~/.vimrc-google")
  source ~/.vimrc-google
end

