call plug#begin()
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'mattn/emmet-vim'
Plug 'easymotion/vim-easymotion'
call plug#end()
map <C-n> :NERDTreeToggle<CR>
imap jj <Esc>
set tabstop=4
set shiftwidth=4
set smarttab
set nu "Включаем нумерацию строк
let g:user_emmet_leader_key=','
"let g:NERDTreeWinSize=20

nmap s <Plug>(easymotion-overwin-f)

map <silent> <C-h> :call WinMove('h')<CR>
map <silent> <C-j> :call WinMove('j')<CR>
map <silent> <C-k> :call WinMove('k')<CR>
map <silent> <C-l> :call WinMove('l')<CR>


"Удобное управление окнами
function! WinMove(key)
  let t:curwin = winnr()
  exec "wincmd ".a:key
  if (t:curwin == winnr())
    if (match(a:key,'[jk]'))
      wincmd v
    else
      wincmd s
    endif
    exec "wincmd ".a:key
  endif
endfunction
