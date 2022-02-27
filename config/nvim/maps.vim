let mapleader=" "

" Fast type
nnoremap <Leader>o o<ESC>
nnoremap <Leader>O O<ESC>

" Split
nnoremap <Leader>\ :vsplit<ESC>

" NERDTree
nmap <Leader>nt :NERDTreeToggle<CR>
nnoremap <Leader>f :NERDTreeFind<CR>

" Save / Close
nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>

" Emmet
let g:user_emmet_mode='n'
let g:user_emmet_leader_key="<Leader>"

" From insert to normal
:imap jk <ESC>

" Resize
nmap <Leader>> 10<C-w>>
nmap <Leader>< 10<C-w><

