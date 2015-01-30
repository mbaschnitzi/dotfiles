set nocompatible
set number
set relativenumber

filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#begin()

Plugin 'gmarik/vundle'                      " required ofc

Plugin 'altercation/vim-colors-solarized'   " color scheme

Plugin 'Shougo/vimproc.vim'
Plugin 'bling/vim-airline'
Plugin 'fholgado/minibufexpl.vim'
Plugin 'Lokaltog/vim-easymotion'
"Plugin 'kien/ctrlp.vim'
"Plugin 'rstacruz/sparkup'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdtree'
"Plugin 'tpope/vim-abolish'
Plugin 'tpope/vim-fugitive'
"Plugin 'tpope/vim-repeat'
"Plugin 'tpope/vim-surround'
Plugin 'Valloric/YouCompleteMe'
Plugin 'Yggdroot/indentLine'
Plugin 'Shougo/unite.vim'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
"Plugin 'terryma/vim-multiple-cursors'
"Plugin 'marijnh/tern_for_vim'
"Plugin 'nathanaelkane/vim-indent-guides'

"Plugin 'L9'
"Plugin 'FuzzyFinder'
"Plugin 'rails.vim'

call vundle#end()
filetype plugin indent on

syntax on
let mapleader=','

set ignorecase
set smartcase



set scrolloff=5
set sidescrolloff=5

set winminheight=0

set wildmenu
set wildmode=longest:full
set completeopt=longest,menuone,preview

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set autoindent
set shiftround
set smarttab

set laststatus=2

set list
set listchars=tab:\|\ ,trail:-

set showcmd

set incsearch
set hlsearch

set autoread

set virtualedit=all
set showtabline=2

set enc=utf-8
set fileencoding=utf-8

set guifont=Source\ Code\ Pro\ 8
set vb t_vb=
set mouse=a

set bs=indent,start,eol

" this does strange things to comments in c++ with slate
"set cursorline
"set cursorcolumn

let g:syntastic_php_checkers=['php', 'phpcs', 'phpmd']

"let g:indent_guides_enable_on_vim_startup=1
"let g:indent_guides_guide_size=1
let g:solarized_termtrans=1

let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"


set background=dark
colorscheme solarized

autocmd Filetype cpp set syntax=cpp.doxygen

" Mappings

nmap <leader>swh    :topleft vnew<CR>
nmap <leader>swl    :botright vnew<CR>
nmap <leader>swk    :topleft new<CR>
nmap <leader>swj    :botright new<CR>

nmap <leader>sh     :leftabove vnew<CR>
nmap <leader>sl     :rightbelow vnew<CR>
nmap <leader>sk     :leftabove new<CR>
nmap <leader>sj     :rightbelow new<CR>

nnoremap <C-p>      :Unite file_rec/async<CR>
nnoremap <space>/   :Unite grep:.<cr>

" Unite
call unite#filters#matcher_default#use(['matcher_fuzzy'])
call unite#filters#sorter_default#use(['sorter_rank'])
call unite#custom#profile('default', 'context', {'start_insert':1})
call unite#custom#profile('files', 'context', {'smartcase':1})
autocmd FileType unite call s:unite_settings()
function! s:unite_settings()
" Enable navigation with Tab and Shift-Tab in insert mode
  imap <buffer> <Tab> <Plug>(unite_select_next_line)
  imap <buffer> <S-tab> <Plug>(unite_select_previous_line)
endfunction

set wildignore+=*.cpp.dep,*.swp,*.o
set t_Co=16
set cursorline
set colorcolumn=80,120
