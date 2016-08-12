call pathogen#infect()
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

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

"syntastic
let g:syntastic_always_populate_loc_list = 0
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_error_symbol = "✗"
let g:syntastic_warning_symbol = "⚠"
let g:syntastic_ruby_checkers = ['rubocop', 'mri']

set encoding=utf-8
color molokai
let g:molokai_original = 1

set t_Co=256
set cursorline
set cursorcolumn
 
highlight CursorLine cterm=none ctermbg=236
highlight CursorColumn cterm=none ctermbg=236
