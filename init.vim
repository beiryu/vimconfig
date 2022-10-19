set scrolloff=12
set number
set relativenumber
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent

call plug#begin('~/.vim/plugged')
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'ayu-theme/ayu-vim'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'preservim/nerdtree'
call plug#end()

colorscheme dracula

let mapleader = " "

vmap <Tab> >gv
vmap <S-Tab> <gv

nnoremap <leader>pv :Vex<CR>
nnoremap <leader><CR> :so ~/.config/nvim/init.vim<CR>
nnoremap <C-p> :GFiles<CR>
inoremap kj <esc>
nnoremap <leader>pf :Files<CR>
nnoremap <c-j> :cnext<CR>
nnoremap <c-k> :cprev<CR>

nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-b> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
