 " skip initialization for vim-tiny or vim-small.
 if 0 | endif

 if has('vim_starting')
   " turn off vi compatability
   if &compatible
     set nocompatible
   endif

   set runtimepath+=~/.vim/bundle/neobundle.vim/
 endif

call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
NeoBundleFetch 'Shougo/neobundle.vim'

" My Bundles here:
" Refer to |:NeoBundle-examples|.

call neobundle#end()

" required by neobundle
filetype plugin indent on

" prompt to install uninstalled bundles found on startup
NeoBundleCheck

set background=dark

" syntax hilighting
syntax on

 " swap between buffers without needing to save
set hidden

" none of these are word dividers
set iskeyword+=_,#

 " line numbers
set nu

" optimize macro execution by not redrawing until macro is finished
set lazyredraw

"set list " hilight tabs and trailing
"set listchars=tab:>-,trail:-

" show matching brackets
set showmatch

" leave 5 rows of space when scrolling
set scrolloff=5

" text formatting
set expandtab
set shiftwidth=4
set softtabstop=4
set tabstop=4 " make real tabs 4 wide

set wrap
set cindent

" make left and right keys cycle between tabs
nnoremap <Right> :tabnext<CR>
nnoremap <Left>  :tabprev<CR>

"colorscheme luna
"set t_Co=256

let mapleader = "\<Space>"
