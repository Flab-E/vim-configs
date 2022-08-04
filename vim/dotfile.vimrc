" Specify a directory for plugins
call plug#begin('~/.vim/plugged')

" Any valid git URL is allowed for plugin

" plugins here
Plug 'davidhalter/jedi-vim'
Plug 'fxn/vim-monochrome'
Plug 'lokaltog/vim-monotone'
Plug 'octol/vim-cpp-enhanced-highlight'

" initiate plugin system
call plug#end()


"""""" defaulot vim configs """""
" how many spaces is a tab
set tabstop=4
set shiftwidth=4

" ow many lines of history to be stored
set history=500

" enable filetype plugins
filetype plugin on
filetype indent on

" set absolute line number
set number

" set autoread when a file is changed from outised
set autoread

" map key to leader
let mapleader = ","

" using leader, fast save:
nmap <leader>w :w!<cr>

" :W sudo saves the file to handle permission-denied error
command! W execute 'w !sudo tee % > /dev/null' <bar> edit!

" vim user interface
set so=5

" turn on wildmenu
set wildmenu

" Always show current position
set ruler

" Height of the command bar:
set cmdheight=1

" A buffer becomes hidden when it is abandoned
set hid

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" set ignorecase when searching
set ignorecase

" status line
" " Always show the status line
set laststatus=2

" returns true if paste mode is enabled
function! HasPaste()
    if &paste
        return 'PASTE MODE  '
    endif
    return ''
endfunction

" Format the status line
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l\ \ Column:\ %c

" plugin configs
colorscheme monochrome
