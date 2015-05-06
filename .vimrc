if has("gui_running")
	let &runtimepath.=',$HOME/.vim'
	set guifont=Source\ Code\ Pro
	set guioptions-=T  "remove toolbar	
endif

execute pathogen#infect()

set backspace=2 " make backspace work like most other app
syntax on
set t_Co=256
colorscheme wombat256 
set nu
set nocompatible
set clipboard=unnamedplus " Use System Clipboard
set hls
"set line no, buffer, search, highlight, autoindent and more.
set hidden
set ignorecase
set incsearch
set smartcase
set showmatch
set autoindent
set ruler
set vb
set viminfo+=n$VIM/_viminfo
set noerrorbells
set showcmd
set mouse=a
set history=1000
set undolevels=1000
au BufNewFile,BufRead * if &syntax == '' | set syntax=sh | endif "Default syntax for files without extension

" Igonore Arrow Keys
"inoremap  <Up>     <NOP>
"inoremap  <Down>   <NOP>
"inoremap  <Left>   <NOP>
"inoremap  <Right>  <NOP>
"noremap   <Up>     <NOP>
"noremap   <Down>   <NOP>
"noremap   <Left>   <NOP>
"noremap   <Right>  <NOP>

" NERDTree map to C-n
map <C-n> :NERDTreeToggle<CR> 
map <C-b> :CtrlPBuffer<CR> 

" CtrlP
set runtimepath^=~/.vim/bundle/ctrlp.vim
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }

" Lightline
set laststatus=2 "Show Lightline
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'component': {
      \   'readonly': '%{&readonly?"":""}',
      \ },
\ } 

