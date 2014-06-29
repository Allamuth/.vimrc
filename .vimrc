"!runtime debian.vim	
set nocompatible	" Disables vi  compatibilitymode.
set number		" Shows linenumbers.
set relativenumber	" Shows relative numbers.
			" Combination of number (nu)  and relativenumber (rnu) shows instead of 0 in middle current linenumber. 	
if has("syntax")	" Enables syntax highlighting by default.
    syntax on
endif

"if "(" == true
"    ) +  ^[ + h + i  
"endif

set background=dark	" Sets fondcolour for dark backgrounds.
set hlsearch		" Highlights matching words while searching (temporarely).
set incsearch		" Jumps to searched text.
set showcmd		" Show (partial) command in status line.
set showmatch		" Shows matching brackets.
set cmdheight=3         " Sets comandline height.
set laststatus=2        " Always shows statusline.
set autowrite		" Auto-saves before commands like :make and :next.
set cul                 " Highlights current line.

" persistent undo and backup.
"set history=1000
"set undofile
"set undodir=~/.backup/
"set backup
"set backupdir=~/.backup/

" Tabing and stuff.
set nosmartindent
set shiftwidth=4	" Width of tab.
set softtabstop=4
set expandtab		" Use spaces instead of tabs.
set textwidth=0
set wrapmargin=0
set wrap linebreak      " No wrap in words.

set scrolloff=11	" Minimum distant to end of page.

" Jumps after auto-word-wrap to visual line not to logical.
nnoremap j gj
nnoremap k gk





