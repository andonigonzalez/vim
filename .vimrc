set number
set mouse=a
set numberwidth=1
set clipboard=unnamed
syntax enable
set ruler
set encoding=utf-8
set relativenumber
set showcmd
set showmatch
set sw=4
set laststatus=2

let mapleader=" "
nnoremap <SPACE> <Nop>
" Esc
inoremap jj <Esc>
inoremap JJ <Esc>

" Guardar
nmap <Leader>w :w<CR>
" Salir
nmap <Leader>q :q<CR>
" Rehacer
nmap <Leader>r <C-r>
" Scroll abajo varios
nmap <Leader>d <C-d>
" Scroll arriba varios
nmap <Leader>u <C-u>
" Scroll abajo 1
nmap <Leader>y <C-y>
" Scroll arriba 1
nmap <Leader>e <C-e>
" Busqueda de dos caracteres
"nmap <Leader>s <Plug>(easymotion-s2)
" NerdTree
nmap <Leader>nt :NERDTreeFind<CR>
" Dividir linea
nmap <Leader>o i<CR><Esc>
" Fuzzy finder
nmap <C-p> :FZF<CR>

" Plugins
call plug#begin('~/.vim/plugged')

" Themes
Plug 'morhetz/gruvbox'

" IDE
Plug 'easymotion/vim-easymotion'
Plug 'scrooloose/nerdtree'
Plug 'christoomey/vim-tmux-navigator'

Plug 'pangloss/vim-javascript'    " JavaScript support
Plug 'leafgarland/typescript-vim' " TypeScript syntax
Plug 'maxmellon/vim-jsx-pretty'   " JS and JSX syntax
Plug 'jparise/vim-graphql'        " GraphQL syntax
Plug 'neoclide/coc.nvim' , { 'branch' : 'release' }

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

call plug#end()

colorscheme gruvbox
"let g:gruvbox_contrast_dark = "hard"
let NERDTreeQuitOnOpen=1
let NERDTreeWinSize=60

" Coc configuration
let g:coc_global_extensions = [ 'coc-tsserver' ]
" Remap keys for applying codeAction to the current line.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)
" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent><F12> <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

let g:fzf_layout = { 'down': '~40%' }

" VsVim EasyMotion
nnoremap <Space> gS:vsc Tools.InvokePeasyMotion<CR>
nmap s gS:vsc Tools.InvokePeasyMotionTwoCharJump<CR>
