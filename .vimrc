colorscheme slate
set expandtab smarttab
set shiftwidth=2
set tabstop=2
set number ruler
set nowrap backspace=indent,eol,start

syntax on
filetype plugin on

map <Leader>n <plug>NERDTreeTabsToggle<CR>

"----PRETTIFY----"
highlight VertSplit ctermbg=DarkGray ctermfg=DarkGray
set fillchars=""
hi TabLineFill  guifg=#999 guibg=#222 gui=none ctermfg=254 ctermbg=238 cterm=none

"----Commands that start with '\'----"
map <Leader>n <plug>NERDTreeTabsToggle<CR>

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

"----MAKE PATHOGEN WORK----"
execute pathogen#infect()

