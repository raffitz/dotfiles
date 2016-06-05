
"
" Vundle plugins:
"

set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.config/nvim/bundle/Vundle.vim
call vundle#begin('~/.config/nvim/bundle')

" let Vundle manage Vundle
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-obsession'
Plugin 'sirtaj/vim-openscad'
Plugin 'jtratner/vim-flavored-markdown'
Plugin 'editorconfig/editorconfig-vim'

call vundle#end()
"
" End of Vundle plugins
"

" Syntax highlighting:
syntax on

" Autoindent settings:
set autoindent
filetype plugin indent on

" neovim mouse disabling:
set mouse=

" Show commands:
set showcmd

" TeX flavour is LaTeX
let g:tex_flavor='latex'

" Numbering
set rnu
set number

" Allow for hidden buffers
set hidden
