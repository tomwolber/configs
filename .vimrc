set expandtab smarttab
set shiftwidth=2
set tabstop=2
set number ruler
set nowrap backspace=indent,eol,start
set laststatus=2
set linespace=0

"----COLORS----"
set t_Co=256
syntax on
colorscheme luna
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

"----AIRLINE PLUGIN----"
let g:airline_powerline_fonts = 1
let g:airline_section_y = 0
let g:airline_section_warning = 0

"----MAKE PATHOGEN WORK----"
execute pathogen#infect()

