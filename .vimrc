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
set clipboard=unnamed

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


map + <c-w>>
map - <c-w><

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
map <Leader>/ :NERDTreeTabsToggle<CR>
map <Leader>. :NERDTreeFocus<CR>
map <Leader>, :GitGutterLineHighlightsToggle<CR>
nnoremap <space> za

"----NERDTREE----"
let g:nerdtree_tabs_open_on_console_startup=1
let g:nerdtree_tabs_autoclose=0

"----MAKE PATHOGEN WORK----"
execute pathogen#infect()

"----MAKE CTRLP WORK----"
set runtimepath^=~/.vim/bundle/ctrlp.vim

"----REMOVE READONLY FROM GIT DIFFTOOL----"
set noro

let g:syntastic_javascript_checkers = ['jshint']
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
let g:syntastic_error_symbol = '❌'
let g:syntastic_style_error_symbol = '⁉️'
let g:syntastic_warning_symbol = '⚠️'
let g:syntastic_style_warning_symbol = '💩'
let g:syntastic_javascript_eslint_exe = 'npm run eslint --'

let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ "Unknown"   : "?"
    \ }


highlight link SyntasticErrorSign SignColumn
highlight link SyntasticWarningSign SignColumn
highlight link SyntasticStyleErrorSign SignColumn
highlight link SyntasticStyleWarningSign SignColumn

set mouse=a

let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=235
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=23
