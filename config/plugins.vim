" Plugin List
" Use `zR` to open all folds

" ### Install vim-plug {{{1
"----------------------------------------------------------------------------"
" install vim-plug if it's not already installed
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC | Startify | Ql
endif

" ### PLUGIN LIST {{{1
"----------------------------------------------------------------------------"
call plug#begin('~/.vim/plugins')

" python specific plugins
Plug 'hynek/vim-python-pep8-indent'    " for auto indenting pep8 style
Plug 'python-mode/python-mode'

" home screen
Plug 'mhinz/vim-startify'              " pretty start page

" project management
Plug 'ctrlpvim/ctrlp.vim'              " project file fuzzy-matcher
Plug 'd11wtq/ctrlp_bdelete.vim'
Plug 'dbakker/vim-projectroot'         " locate project
Plug 'scrooloose/nerdtree'             " file tree

" window management
Plug 'roman/golden-ratio'
Plug 'vim-scripts/tinykeymap'

" coding/editing
Plug 'honza/vim-snippets'              " the actual snippest themselves
Plug 'tpope/vim-surround'              " add, change, delete surround text
Plug 'w0rp/ale'
Plug 'jmcantrell/vim-virtualenv'       " virtualenv
Plug 'ntpeters/vim-better-whitespace'  " removes spurious whitespace
Plug 'tpope/vim-commentary'            " quickly toggle comments
Plug 'szw/vim-tags'
Plug 'michaeljsmith/vim-indent-object' " for selecting indent objects
Plug 'kshenoy/vim-signature'           " visible marks
Plug 'vim-scripts/Align'
Plug 'godlygeek/tabular'               " align text, even tables

" search
Plug 'haya14busa/incsearch.vim'
Plug 'dyng/ctrlsf.vim'                 " search project

" syntax files
Plug 'plasticboy/vim-markdown'         " markdown syntax highlighting
Plug 'pangloss/vim-javascript'         " javascript utils

" undo
Plug 'sjl/gundo.vim'                   " undo tree

" git
Plug 'mattn/webapi-vim'                " required for gist-vim
Plug 'mattn/gist-vim'                  " post gists to gist.github.com
Plug 'tpope/vim-fugitive'              " git utils
Plug 'airblade/vim-gitgutter'

" movement
Plug 'Lokaltog/vim-easymotion'         " much quicker movement
Plug 'vim-scripts/quit-another-window'

" colorschemes
Plug 'synic/jellybeans.vim'
Plug 'jnurmine/Zenburn'
Plug 'morhetz/gruvbox'
Plug 'synic/synic.vim'

" interface
Plug 'bling/vim-airline'

" tmux
Plug 'christoomey/vim-tmux-navigator'
Plug 'benmills/vimux'
Plug 'janko-m/vim-test'

" misc
Plug 'vim-scripts/openssl.vim'
Plug 'Valloric/ListToggle'
Plug 'jceb/vim-orgmode'
Plug 'vimwiki/vimwiki'

" FZF
Plug 'junegunn/fzf.vim'

call plug#end()

" ### FOOTER/MODELINE {{{1
"----------------------------------------------------------------------------"
" auto-reload this file when saving
autocmd! bufwritepost plugins.vim source %

" vim:foldmethod=marker
