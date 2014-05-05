" Set 'nocompatible' to ward off unexpected things that your distro might
" have made, as well as sanely reset options when re-sourcing .vimrc
set nocompatible

" Attempt to determine the type of a file based on its name and possibly its
" contents. Use this to allow intelligent auto-indenting for each filetype,
" and for plugins that are filetype specific.
filetype indent plugin on

" Disable the stupid bell 
set noeb vb t_vb=i

" Enable syntax highlighting
syntax enable

" Use the vividchalk color scheme
"    let g:solarized_termcolors=16
colorscheme vividchalk
set background=dark

" Better command-line completion
set wildmenu

" Show partial commands in the last line of the screen
set showcmd

" Highlight searches (use <C-L> to temporarily turn off highlighting
" See the mapping of <C-L> below)
set hlsearch

" Use case insensitive search, except when using capital letters
set ignorecase
set smartcase

" Allow backspacing over autoindent, line breaks and start of
" insert action
set backspace=indent,eol,start

" When opening a new line and no filetype-specific indenting is 
" enabled keep the same indent as the line you're currently on. 
" Useful for READMEs, etc.
set autoindent
set smartindent
set shiftwidth=4

" Stop certain movements from always going to the first character 
" of a line. While this behaviour deviates from that of Vi, it does 
" what most users coming from other editors would expect.
set nostartofline

" Display the cursor position on the last line of the screen or in 
" the status line of a window
set ruler

" Always display the status line, even if only one window is displayed
set laststatus=2

" Instead of failing a command because of unsaved changes, instead 
" raise a dialogue asking if you wish to save changed files.
set confirm

" Enable use of the mouse for all modes
set mouse=a

" Set the command window height to 2 lines, to avoid many cases of 
" having to "press <Enter> to continue"
set cmdheight=2

" Display line numbers on the left
set number

" Use <F11> to toggle between 'paste' and 'nopaste'
set pastetoggle=<F11>

" Indentation settings for using 2 spaces instead of tabs.
" Do not change 'tabstop' from its default value of 8 with this setup.
set shiftwidth=2
set softtabstop=2
set expandtab

set showcmd

" Useful mappings

" Map Y to act like D and C, i.e. to yank until EOL, rather than act 
" as yy, which is the default
map Y y$

" Map <C-L> (redraw screen) to also turn off search highlighting 
" until the next search
nnoremap <C-L> :nohl<CR><C-L>

" Add alternative to reaching for Esc
imap ;; <Esc>
imap <S-space> <Esc>
nmap <F2> :w<cr>

