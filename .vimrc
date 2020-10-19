call plug#begin()
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'mattn/emmet-vim'
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-fugitive'
call plug#end()
map <C-n> :NERDTreeToggle<CR>
imap jj <Esc>
set tabstop=4
set shiftwidth=4
set smarttab
set nu "Включаем нумерацию строк
let g:user_emmet_leader_key=','
" <Leader>f{char} to move to {char}
map  <Leader>f <Plug>(easymotion-bd-f)
nmap <Leader>f <Plug>(easymotion-overwin-f)

" s{char}{char} to move to {char}{char}
nmap s <Plug>(easymotion-overwin-f2)

" Move to line
map <Leader>L <Plug>(easymotion-bd-jk)
nmap <Leader>L <Plug>(easymotion-overwin-line)

" Move to word
map  <Leader>w <Plug>(easymotion-bd-w)
nmap <Leader>w <Plug>(easymotion-overwin-w)
