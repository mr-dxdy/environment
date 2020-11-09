if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

" navigation
Plug 'preservim/nerdtree'
Plug 'dyng/ctrlsf.vim'

" linter
Plug 'editorconfig/editorconfig-vim'

" search
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" text objects
Plug 'tpope/vim-commentary'
Plug 'vim-airline/vim-airline'

call plug#end()

" settings
syntax enable
set encoding=utf-8
set scrolloff=30
set backspace=indent,eol,start
set hidden
set visualbell
set t_vb=
set noswapfile

" terminal
set notitle
set icon

" editing
set autoindent
set smartindent
set smarttab
set smartcase
set ignorecase
set expandtab
set tabstop=4
set shiftwidth=4
set wrap
set linebreak
set cursorline
set list
set listchars=tab:→\ ,trail:·,eol:¬,extends:❯,precedes:❮,nbsp:×
set synmaxcol=210

if has('mouse')
  set mouse=a
endif

" hotkeys
map <C-n> :NERDTreeToggle<CR>
map <C-t> :FZF<CR>
nmap     <C-F>f <Plug>CtrlSFPrompt
vmap     <C-F>f <Plug>CtrlSFVwordPath
vmap     <C-F>F <Plug>CtrlSFVwordExec
nmap     <C-F>n <Plug>CtrlSFCwordPath
nmap     <C-F>p <Plug>CtrlSFPwordPath
nnoremap <C-F>o :CtrlSFOpen<CR>
nnoremap <C-F>t :CtrlSFToggle<CR>
inoremap <C-F>t <Esc>:CtrlSFToggle<CR>
