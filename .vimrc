set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
Plugin 'L9'
Plugin 'AutoComplPop'
Plugin 'html5.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-bundler'
Plugin 'tpope/vim-rails'
Plugin 'fatih/vim-go'
Plugin 'pangloss/vim-javascript'
Plugin 'tpope/vim-sleuth'
Plugin 'dbext.vim'
Plugin 'tomasr/molokai'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'majutsushi/tagbar'
Plugin 'kchmck/vim-coffee-script'
Plugin 'honza/vim-snippets'
Plugin 'mattn/emmet-vim'
Plugin 'Shougo/neocomplete.vim'
Plugin 'ConradIrwin/vim-bracketed-paste'
Plugin 'tpope/vim-endwise'
Plugin 'ngmy/vim-rubocop'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

call vundle#end()            " required
filetype plugin indent on    " required
filetype plugin on
" " Brief help
" " :PluginList       - lists configured plugins
" " :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" " :PluginSearch foo - searches for foo; append `!` to refresh local cache
" " :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
" "
"
set nocompatible              " be iMproved, required
syntax on
filetype plugin indent on
nmap <F8> :TagbarToggle<CR>

map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

augroup nonvim
   au!
   au BufRead *.png,*.jpg,*.pdf,*.gif,*.xls*,*.ppt*,*.doc*,*.rtf sil exe "!open " . shellescape(expand("%:p")) | bd | let &ft=&ft
augroup end

"Source the vimrc file after saving it
if has("autocmd")
  autocmd bufwritepost .vimrc source $MYVIMRC
endif
"打开自动缩,继承前一行的缩进方式，特别适用于多行注释
set autoindent
set nobackup
set nowb
set showmatch
set fileencodings=utf-8,gbk,gb2312,gb18030
set encoding=utf-8
set number
set noerrorbells
setlocal noswapfile
set incsearch
set textwidth=200
set hlsearch
"Display extra whitespace
set list listchars=tab:»·,trail:·

"tab宽度
set expandtab
set tabstop=4
set smarttab
"正确地处理中文字符的折行和拼接
set formatoptions+=mM
set backspace=2

"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

"syntastic
let g:syntastic_always_populate_loc_list = 0
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_error_symbol = "✗"
let g:syntastic_warning_symbol = "⚠"
let g:syntastic_ruby_checkers = ['rubocop', 'mri']

set encoding=utf-8
colorscheme molokai
let g:molokai_original = 1

set t_Co=256
set cursorline
set cursorcolumn
 
highlight CursorLine cterm=none ctermbg=236
highlight CursorColumn cterm=none ctermbg=236
