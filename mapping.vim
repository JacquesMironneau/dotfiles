
 " Use alt + hjkl to resize windows
nnoremap <M-j>    :resize -2<CR>
nnoremap <M-k>    :resize +2<CR>
nnoremap <M-h>    :vertical resize -2<CR>
nnoremap <M-l>    :vertical resize +2<CR>

" Alternate way to save
nnoremap <C-s> :w<CR>
" Alternate way to quit
nnoremap <C-Q> :wq!<CR>


" Better window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

nnoremap <Leader>o o<Esc>^Da
nnoremap <Leader>O O<Esc>^Da




"El sango del fuego della morte delle initio (en gros ça fait des tab et des maj tab en v)
vnoremap < <gv
vnoremap > >gv

"CAPS
inoremap <c-u> <ESC>viwUi
nnoremap <c-u> viwU<Esc>

nnoremap <TAB> :bnext<CR>
nnoremap <S-TAB> :bprevious<CR>
