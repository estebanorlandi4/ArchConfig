syntax enable                           " Enables syntax highlighing
set conceallevel=0                      " So that I can see `` in markdown files
set hidden                              " Required to keep multiple buffers open multiple buffers
set nowrap                              " Display long lines as just one line
set encoding=UTF-8                      " The encoding displayed
set fileencoding=UTF-8                  " The encoding written to file
set pumheight=10                        " Makes popup menu smaller
set ruler              			            " Show the cursor position all the time
set iskeyword+=-                      	" treat dash separated words as a word text object"
set mouse=a                             " Enable your mouse
set splitbelow                          " Horizontal splits will automatically be below
set splitright                          " Vertical splits will automatically be to the right
set t_Co=256                            " Support 256 colors
set tabstop=2                           " Insert 2 spaces for a tab
set shiftwidth=2                        " Change the number of space characters inserted for indentation
set smarttab                            " Makes tabbing smarter will realize you have 2 vs 4
set expandtab                           " Converts tabs to spaces
set smartindent                         " Makes indenting smart
set autoindent                          " Good auto indent
set laststatus=2                        " Always display the status line
set number                              " Line numbers
"set cursorline                          " Enable highlighting of the current line
set noshowmode                          " We don't need to see things like -- INSERT -- anymore
set nobackup                            " This is recommended by coc
set nowritebackup                       " This is recommended by coc
set updatetime=300                      " Faster completion
set timeoutlen=500                      " By default timeoutlen is 1000 ms
set formatoptions-=cro                  " Stop newline continution of comments
set clipboard+=unnamedplus
set title
set titlestring=%F
set noswapfile
set relativenumber
set wildmenu

au! BufWritePost $MYVIMRC source %
cmap w!! w !sudo tee %

" Plugins
source $HOME/.config/nvim/vim-plug/plugins.vim
let g:indentLine_setConceal=0
let g:clipboard = {
    \ 'name': 'xclip',
    \ 'copy': {
    \   '+': 'xclip -selection clipboard',
    \   '*': 'xclip -selection clipboard',
    \ },
    \ 'paste': {
    \   '+': 'xclip -selection clipboard -o',
    \   '*': 'xclip -selection clipboard -o',
    \ },
    \ 'cache_enable': 1,
\ }

let g:UltiSnipsExpandTrigger='<c-space>'
let g:jsx_ext_required = 0 

" Theme
source $HOME/.config/nvim/themes/onedark.vim

" Settings
"" NERDTree
source $HOME/.config/nvim/settings/NERDTree.vim
"" CoC
source $HOME/.config/nvim/settings/coc.vim
"" Airline
source $HOME/.config/nvim/settings/airline.vim

" Maps
source $HOME/.config/nvim/maps.vim

