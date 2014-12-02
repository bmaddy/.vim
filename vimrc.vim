" This is standard pathogen and vim setup
set nocompatible
call pathogen#infect() 
syntax on
filetype plugin indent on

let clj_highlight_builtins = 1

" folding
set foldmethod=syntax   "fold based on syntax
set foldnestmax=10      "deepest fold is 10 levels
set nofoldenable        "dont fold by default
set foldlevel=1000      "the initial fold level

set number              "show line numbers

" tabs
set tabstop=2           " how many columns a tab counts for
set shiftwidth=2        " how many columns text is indented with the reindent operations
set softtabstop=2       " how many columns vim uses when you hit Tab in insert mode
set expandtab

" searching
set incsearch           " do incremental searching
set ignorecase          " ignore case when searching
set smartcase           " no ignorecase if Uppercase char present

set ruler               " show the cursor position in the status bar
set mouse=a             " enable mouse in some terminals (iterm should work...)
" set autowrite           " write the file when you shell out with :! (and some other commands) 

" make command tab completions act like in the shell
set wildmenu
set wildmode=list:longest

" temp files
set bdir=~/tmp,~/,/tmp  " put backup files somewhere that isn't annoying
set noswapfile          " swap files remember incremental changes to files - they're annoying

"ruby
autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
autocmd FileType ruby,eruby let g:rubycomplete_rails = 1
autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1
"improve autocomplete menu color
highlight Pmenu ctermbg=238 gui=bold

runtime macros/matchit.vim

" Custom key mappings
nmap ,t :FufCoverageFile<CR>

