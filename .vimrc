set nocompatible " disable vi settings

set bs=2		        " allow backspacing over everything in insert mode
set ai			        " always set autoindenting on
set nobackup	        " don't keep a backup file
set viminfo='20,\"50	" read/write a .viminfo file, don't store more
			            " than 50 lines of registers
set history=50		    " keep 50 lines of command line history
set ruler		        " show the cursor position all the time
set nowrap              " make sure that long lines don't wrap
set laststatus=2        " Make sure the status line is always displayed
filetype plugin on
command DiffOrig vert new | set bt=nofile | r # | 0d_ | diffthis
    \ | wincmd p | diffthis

" Switch syntax highlighting on
syntax enable

" Display bufnr:filetype (dos,unix,mac) in status line
set statusline=%<%n:%f%h%m%r%=%{&ff}\ %l,%c%V\ %P

" Hide the mouse pointer while typing
" The window with the mouse pointer does not automatically become the active window
" Right mouse button extends selections
" Turn on mouse support
set mousehide
set nomousefocus
set mousemodel=extend
set mouse=a

" Show paren matches
" For 5 tenths of a second
set showmatch
set matchtime=5

" Setup tabs for 4 spaces
set tabstop=4
set shiftwidth=4
set softtabstop=4
set textwidth=78
set smarttab
set shiftround
set expandtab

" Setup auto wrapping
set textwidth=78

" Setup indenting
set autoindent

map <F2> :BufExplorer<CR>
map <F12> :NERDTree<CR>

set hidden

set noequalalways
set dir=~/.vim/swap
set nobackup writebackup
let Tlist_Show_One_File = 1
let Tlist_Use_Horiz_Window = 1
let Tlist_Enable_Fold_Column = 0
set ttymouse=xterm2

if $TERM_PROGRAM =~ 'APPLE'
    colorscheme ron
else
    set t_Co=256
    colorscheme synic
endif
set colorcolumn=80

" nerdtree
let NERDTreeIgnore=['\.pyc$', '\.pyo$', '\.db$']
let NERDTreeShowBookmarks=1
let NERDTreeMinimalUI=1
let NERDTreeWinSize=25
let NERDTreeChDirMode=2

let g:gundo_width=35
let g:gundo_right=1
let g:gundo_preview_height=25
nnoremap <F5> :GundoToggle<CR>

function MyTabLine() 
    let s = '' 
    let t = tabpagenr() 
    let i = 1 
    while i <= tabpagenr('$') 
        let buflist = tabpagebuflist(i) 
        let winnr = tabpagewinnr(i) 
        if i != 0
            let s .= " "
        endif
        let s .= (i == t ? '%#TabLineSel#' : '%#TabLine#') 
        let s .= i . ":"
        let file = bufname(buflist[winnr - 1]) 
        let file = fnamemodify(file, ':p:t') 
        if file == '' 
            let file = '[No Name]' 
        endif 
        let s .= file 
        let i = i + 1 
    endwhile 
    let s .= '%T%#TabLineFill#%=' 
    let s .= (tabpagenr('$') > 1 ? '%999XX' : 'X') 
    return s 
endfunction 
set stal=2 
set tabline=%!MyTabLine() 
