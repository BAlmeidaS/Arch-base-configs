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

""""" find the selection """""
"" http://vim.wikia.com/wiki/Search_for_visually_selected_text ""
vnoremap // y/<C-R>"<CR>

"""""""" NEERDTREE """"""""
"Show Hidden Files
let NERDTreeShowHidden=1
"Open on start
autocmd VimEnter * NERDTree
"Move cursor to the file opened
autocmd VimEnter * wincmd p
"ignoring pyc, swp files
let NERDTreeIgnore = ['\.pyc$', '\.sw[^\.]*', '\.git$[[dir]]', '.ipynb_checkpoints$[[dir]]', '__pycache__[[dir]]' ]
"size
let g:NERDTreeWinSize=60

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

"vimgo - https://github.com/fatih/vim-go
Plugin 'fatih/vim-go'

"vim-python-pep9-ident
Plugin 'Vimjas/vim-python-pep8-indent'

"python-mode/python-mode
Plugin 'python-mode/python-mode'

"docker-syntax
Plugin 'ekalinin/Dockerfile.vim'

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

"line numbers
:set number

"tab size
set tabstop=2 softtabstop=0 expandtab shiftwidth=2 smarttab

"autocompleteme
"fechando os buffers auxiliares automaticamente
"https://vi.stackexchange.com/questions/4056/is-there-an-easy-way-to-close-a-scratch-buffer-preview-window
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_autoclose_preview_window_after_completion = 1

"Pytohn-mode - python 3 syntax
let g:pymode_python = 'python3'

"xclip on F7
"map <F7> :w !xclip -sel c<CR><CR>
"vmap <F7> "*y
"map <S-F7> :r!xclip -sel c<CR>

"update zshrc
let $BASH_ENV = "~/.bash_aliases"

let g:pymode_lint_ignore = ["E501"]

"fold by indent:
setlocal foldmethod=indent

"adding hotkey to explore
map <F2> :Explore<CR>

"debugger python on macro -> p
let @p="Oimport ipdb; ipdb.set_trace()"
