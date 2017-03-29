" All system-wide defaults are set in $VIMRUNTIME/archlinux.vim (usually just
" /usr/share/vim/vimfiles/archlinux.vim) and sourced by the call to :runtime
" you can find below.  If you wish to change any of those settings, you should
" do it in this file (/etc/vimrc), since archlinux.vim will be overwritten
" everytime an upgrade of the vim packages is performed.  It is recommended to
" make changes after sourcing archlinux.vim since it alters the value of the
" 'compatible' option.

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages.
runtime! archlinux.vim

" If you prefer the old-style vim functionalty, add 'runtime! vimrc_example.vim'
" Or better yet, read /usr/share/vim/vim80/vimrc_example.vim or the vim manual
" and configure vim to your own liking!

" do not load defaults if ~/.vimrc is missing
"let skip_defaults_vim=1
"
syntax on
set synmaxcol=512
filetype plugin indent on
runtime macros/matchit.vim

" system
set enc=utf-8
set spelllang=en
set backspace=indent,eol,start

" single settings
 set hidden " change buffers without saving
 set mousehide " no mouse
 set wildmenu " menu when tab completing commands
 set nostartofline " don't move the coursor to the beginning of the line
 set foldmethod=marker
 set scrolloff=16
 set pastetoggle=<F12> " toggle paste
 set showmatch " matching braces
 set noshowmode " airline does this already
 set noswapfile " 21. century, yay
 set gdefault " substitution is global by default, specify g to reverse
 set lazyredraw " don't redraw while executing a macro
 set autoread " read changed files
 set autochdir " pwd follows files
 set clipboard^=unnamedplus " use system clipboard

 " open splits in nicer locations
 set splitbelow
 set splitright

 " persistent undo and backup
 set history=1000
 
 " tabs and stuff
 set tabstop=8
 set expandtab
 set shiftwidth=4
 set softtabstop=4
 set smarttab
 " set cindent
 set smartindent

 " width
 set textwidth=0
 set wrapmargin=0
 set wrap
 set linebreak

 " search
 set ignorecase
 set smartcase
 set hlsearch
 set incsearch

 " snappy timeouts
 set notimeout
 set ttimeout
 set ttimeoutlen=0

 "####################################################################
 "" visual style {{{
 "####################################################################
 "" colorscheme
 set background=dark
 
 " line and column highlights
 " set cul
 " set cuc
 " augroup cuc
 "     au!
 "     au WinLeave,InsertEnter * set nocuc
 "     au WinEnter,InsertLeave * set cuc
 " augroup END
 
 " statusbar
 set cmdheight=2
 set laststatus=2
 set showcmd
 
 " linenumbers
 set number
 set relativenumber
 set ruler

 " highlight git merge markers
 match ErrorMsg '^\(<\|=\|>\)\{7\}\([^=].\+\)\?$'
 " }}}

"####################################################################
"" keymaps {{{
"####################################################################

 " jump to visual lines
 nnoremap j gj
 nnoremap k gk
 nnoremap gj j
 nnoremap gk k

 " move visual block
 vnoremap J :m '>+1<CR>gv=gv
 vnoremap K :m '<-2<CR>gv=gv

 " start and end of line
 noremap H ^
 noremap L $

 " stay in visual after indent
 vnoremap < <gv
 vnoremap > >gv

 " highlight last inserted text
 nnoremap gV `[v`]

 " save with sudo
 cmap w!! w !sudo tee %

" force quit in quick
cmap Q q!
