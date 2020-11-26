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
""Open on start
autocmd VimEnter * NERDTree
"Move cursor to the file opened
autocmd VimEnter * wincmd p
"ignoring pyc, swp files
let NERDTreeIgnore = ['\.pyc$', '\.sw[^\.]*', '\.git$[[dir]]', '.ipynb_checkpoints$[[dir]]', '__pycache__[[dir]]' ]
"size
"let g:NERDTreeWinSize=60
let NERDTreeHijackNetrw=1

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

"markdonw
"TODO: npm install -g livedown
Plugin 'shime/vim-livedown'

"pydocstring
Plugin 'BAlmeidaS/vim-pydocstring'

"fastfold
Plugin 'Konfekt/FastFold'

"fastfold
Plugin 'chrisbra/Colorizer'

"simplyfold
Plugin 'tmhedberg/SimpylFold'

"hardtime
Plugin 'takac/vim-hardtime'
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

"options simpylfold
let g:SimpylFold_docstring_preview = 0
let g:SimpylFold_fold_docstring = 0
let g:SimpylFold_fold_import = 0

nnoremap <space> za
vnoremap <space> zf

"adding hotkey to explore
map <F2> :Explore<CR>

"debugger python on macro -> p
let @p="Oimport ipdb; ipdb.set_trace()"
let @r="Orequire 'pry'; binding.pry"

"setting netrw
" augroup ProjectDrawer
"     autocmd!
"     autocmd VimEnter * if argc() == 0 | Explore! | endif
" augroup END
" 
let g:netrw_list_hide= 'ipynb_checkpoints,pycache,.*\.sw.$'

"################
"Livedown configs
"################
" should markdown preview get shown automatically upon opening markdown buffer
let g:livedown_autorun = 0
" should the browser window pop-up upon previewing
let g:livedown_open = 1
" the port on which Livedown server will run
let g:livedown_port = 9123
" the browser to use, can also be firefox, chrome or other, depending on your executable
let g:livedown_browser = "firefox"

"################
"pydocstring
"################
nmap <silent> <C-_> <Plug>(pydocstring)i

let g:colorizer_auto_color = 1

"########################
"C++ configs Youcompleteme
"https://www.ovenproof-linux.com/2018/03/installing-youcompleteme-for-c.html
"########################
let g:ycm_global_ycm_extra_conf = '$HOME/.vim/ycm_extra_conf/ycm_extra_conf.py'

"########
"HARDTIME
"########
let g:hardtime_default_on = 1
let g:hardtime_maxcount = 2
let g:hardtime_showmsg = 1
let g:list_of_normal_keys = ["h", "j", "k", "l", "-", "+", "<UP>", "<DOWN>", "<LEFT>", "<RIGHT>"]
let g:list_of_visual_keys = ["h", "j", "k", "l", "-", "+", "<UP>", "<DOWN>", "<LEFT>", "<RIGHT>"]
let g:list_of_insert_keys = ["<UP>", "<DOWN>", "<LEFT>", "<RIGHT>"]
let g:list_of_disabled_keys = ["<UP>", "<DOWN>", "<LEFT>", "<RIGHT>"]
