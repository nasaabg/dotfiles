set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-ruby/vim-ruby'
Plugin 'scrooloose/nerdtree'
Plugin 'altercation/vim-colors-solarized'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/syntastic'
Plugin 'kien/ctrlp.vim'
Plugin 'bling/vim-airline'
Plugin 'tpope/vim-rails'
Plugin 'mileszs/ack.vim'
Plugin 'tpope/vim-endwise'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'airblade/vim-gitgutter'
Plugin 'scrooloose/nerdcommenter'

call vundle#end()            " required
filetype plugin indent on    " required

" Leader key
let mapleader=" "
:map <Leader>q :q<Esc>
:map <Leader>w :w<Esc>
:map <Leader>n :NERDTree<Esc>
:map <Leader>a :Ack
:map <C-h> <C-w>h
:map <C-j> <C-w>j
:map <C-k> <C-w>k
:map <C-l> <C-w>l
:nmap <leader><Leader> <Return>
:nmap <C-b> <C-^>

" NERDTree cutomization
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
let g:NERDChristmasTree = 1
let g:NERDTreeMapOpenSplit = "s"
let g:NERDTreeMapOpenVSplit = "v"

" Color

" Syntax
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0


" Indentation/tab settings
set softtabstop=2
set tabstop=2
set shiftwidth=2
set expandtab
set autoindent
set laststatus=2

set showmatch
set ignorecase smartcase
set cmdheight=2
set switchbuf=useopen
set showtabline=2
set winwidth=79
set showcmd
syntax on
set noswapfile

""""""""""""""""""""""""""""""""""""""""
" Files & backups
""""""""""""""""""""""""""""""""""""""""

" Backup and history
set nobackup
set nowritebackup
set directory=~/tmp,/tmp
set history=10000

" Saving and reloading
set confirm
set autoread

""""""""""""""""""""""""""""""""""""""""
" Editing
""""""""""""""""""""""""""""""""""""""""

" Turn off word wrapping
set nowrap

" Sane backspace behaviour
set backspace=indent,eol,start

" Folding settings
set foldmethod=indent   "indent based on syntax
set foldnestmax=3       "deepest fold is 3 levels
set foldlevel=3
set nofoldenable        "dont fold by default

set matchpairs+=<:>
set iskeyword+=?
"
set formatoptions-=r "dont continue comments when inserting new line(with Enter)
set formatoptions-=o "dont continue comments when inserting new line (with o or O)

" Show line numbering
set number
set numberwidth=3

" Display tabs and trailing spaces
set list
set listchars=tab:»\ ,trail:·,nbsp:·

" Vertical/horizontal scroll off settings
set scrolloff=3
set sidescrolloff=7
set sidescroll=1

" Some stuff to get the mouse going in term
set mouse=a
set ttymouse=xterm2

" strip trailing whitespace
nnoremap <silent> <leader>sw :call Preserve("%s/\\s\\+$//e")<CR>

" auto indent whole file
nnoremap <silent> <leader>= :call Preserve("normal gg=G")<CR>

nnoremap <silent> <C-l> <C-w>l

" allow moving with j/k in insert mode
imap <c-j> <Down>
imap <c-k> <Up>
imap <c-h> <Left>
imap <c-l> <Right>

""""""""""""""""""""""""""""""""""""""""
" Search
""""""""""""""""""""""""""""""""""""""""

set incsearch
set hlsearch

"""""""""""""""""""""""""""""""""""""""
" Key map
""""""""""""""""""""""""""""""""""""""
" commenting
nmap <leader>c gcc
vmap <leader>c gc

" tab with completion
inoremap <silent> <Tab> <C-R>=SuperCleverTab()<CR>

:map <F8> :TlistToggle <CR>
:map <F2> :tabprevious <cr>
:map <F3> :tabnext <cr>
:map <F4> :set nu! <CR>

" Hide search highlighting
map <silent> <Leader>h :nohl <CR>

""""""""""""""""""""""""""""""""""""""""
" Functions
""""""""""""""""""""""""""""""""""""""""
function! SuperCleverTab()
  let col = col('.') - 1
  if !col || getline('.')[col - 1] =~ '^\s$'
    return "\<Tab>"
  else
    return "\<C-P>"
  endif
endfunction

" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'
" This allows buffers to be hidden if you've modified a buffer.
" This is almost a must if you wish to use buffers in this way.
set hidden

ab tli Tiramisu.logger.info
ab bp binding.pry

set clipboard=unnamed
