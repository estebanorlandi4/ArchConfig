call plug#begin('~/.config/nvim/autoload/plugged')

" Syntax
Plug 'sheerun/vim-polyglot'

" Status bar
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-airline/vim-airline'

" Themes
Plug 'joshdick/onedark.vim'

" Tree
Plug 'scrooloose/nerdtree'
Plug 'ryanoasis/vim-devicons'

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Typing
Plug 'alvan/vim-closetag'

" Tmux
Plug 'christoomey/vim-tmux-navigator'

" Autocomplete
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" IDE
Plug 'easymotion/vim-easymotion'
Plug 'mhinz/vim-signify'
Plug 'yggdroot/indentline'
Plug 'scrooloose/nerdcommenter'
Plug 'pangloss/vim-javascript'
Plug 'eslint/eslint'
Plug 'jbgutierrez/vim-better-comments'

Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'

Plug 'mattn/emmet-vim'

Plug 'SirVer/ultisnips'
Plug 'mlaursen/vim-react-snippets'

call plug#end()
