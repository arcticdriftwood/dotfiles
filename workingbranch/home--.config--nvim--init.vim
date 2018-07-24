" Plugins
call plug#begin('~/.config/nvim/plugged')
Plug 'arcticicestudio/nord-vim'
Plug 'sbdchd/neoformat'
call plug#end()

" Visual Theming
colorscheme nord
hi statusline ctermfg=white ctermbg=black

" Newline character and visible tabs
"set listchars+=eol: 
"¬
set list

" Control + HJKL -> Moving panes
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Mouse navigation
set mouse=a

" File indents
autocmd Filetype haskell setlocal et ts=2 sw=2 sts=2 tw=80 nolist
