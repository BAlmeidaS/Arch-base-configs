set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

""""" SYNTAX HIGHLIGHT """""
filetype plugin on
syntax on

"""""""" NEERDTREE """"""""
"Show Hidden Files
let NERDTreeShowHidden=1
"Open on start
autocmd VimEnter * NERDTree

""" HIGHLIGHT SEARCH PATTERN """
:set hlsearch

"""""""""""""""""""""""""""""
"""""""""" VUNDLES """"""""""
"""""""""""""""""""""""""""""

"GOLDEN VIEW
Bundle 'zhaocai/GoldenView.Vim'

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

"NERDTREE
Plugin 'scrooloose/nerdtree'

"CTRL-P
Plugin 'kien/ctrlp.vim'

"Colorscheme
Plugin 'morhetz/gruvbox'

"ruby extensions
Bundle 'vim-ruby/vim-ruby'

"autocomplete
Plugin 'Valloric/YouCompleteMe'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

"""""""""""""""""""""""""""""
"""""""" VUNDLES END """"""""
"""""""""""""""""""""""""""""

"set colorscheme
colorscheme gruvbox
set background=dark

"setting params to autocomplete
let g:ycm_global_ycm_extra_conf = '/usr/share/vim/vimfiles/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
