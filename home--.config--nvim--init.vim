call plug#begin('~/.config/nvim/plugged')
Plug 'arcticicestudio/nord-vim'
call plug#end()
colorscheme nord
hi statusline ctermfg=white ctermbg=black
set listchars+=eol:¬
set list

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

set mouse=a
