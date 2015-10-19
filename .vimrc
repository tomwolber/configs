set expandtab smarttab
set shiftwidth=2
set tabstop=2
set number ruler
set nowrap backspace=indent,eol,start
set laststatus=2
set linespace=0
set cursorline
set cursorcolumn
set foldmethod=syntax
set nofoldenable 

"----COLORS----"
set t_Co=256
syntax on
colorscheme luna
filetype plugin on
hi CursorLine ctermbg=237 guibg=#3a3a3a cterm=none gui=none
hi CursorColumn ctermbg=237 guibg=#3a3a3a cterm=none gui=none

"----PRETTIFY----"
highlight VertSplit ctermbg=DarkGray ctermfg=DarkGray
set fillchars=""
hi TabLineFill  guifg=#999 guibg=#222 gui=none ctermfg=254 ctermbg=238 cterm=none

"----DISABLE ARROW KEYS----"
map <Left> <Nop>
map <Right> <Nop>
map <Up> <Nop>
map <Down> <Nop>

"----MISFIRES----"
command W w
command Q q
command Wq wq
command WQ wq
command Bn bn

"----AIRLINE PLUGIN----"
let g:airline_powerline_fonts = 1
let g:airline_section_y = 0
let g:airline_section_warning = 0

"----MAPPINGS----"
imap ii <Esc>
map <Leader>n :NERDTreeTabsToggle<CR>
map <Leader>m :NERDTreeFocus<CR>

"----NERDTREE----"
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

"----MAKE PATHOGEN WORK----"
execute pathogen#infect()
