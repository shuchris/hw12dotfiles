" EECS398 AHW13 (OH++3): Using and Customizing Vim
" Christopher Shu (shuchris)
" Due: 2018-04-02 Monday

set nocompatible              " be iMproved, required
filetype off                  " required

" ---------- 1.2 Appearance ----------
" Change color scheme
"colorscheme darkblue
" Shows line numbers:
set number
" Always display status line:
" http://vim.wikia.com/wiki/Displaying_status_line_always
set laststatus=2
" Show line and column numbers:
" http://learnvimscriptthehardway.stevelosh.com/chapters/17.html
set statusline=File:\ %-45F 
set statusline+=Line:\ %04l\ Column:\ %04c

" ---------- 1.1 Package Managing ----------
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Keep Plugin commands between vundle#begin/end.
" Plugin for YouCompleteMe
Plugin 'Valloric/YouCompleteMe'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" " To ignore plugin indent changes, instead use:
"filetype plugin on

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal

" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" Default autocompletion for C family
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/.ycm_extra_conf.py'

" ---------- 1.3 Vimscripting and Other Functionalities ----------
" Mapping shortcut keys to key commands for common strings typed repeatedly
map ,io i#include <iostream><RETURN><ESC>
map ,cout icout <<<RETURN><ESC>
map ,std iusing namespace std;<RETURN><ESC>
map ,hdr i# EECS<RETURN># Christopher Shu (shuchris)<RETURN># Due: 20YY-MM-DD xxxday hhmm<RETURN>


