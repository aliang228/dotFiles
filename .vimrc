set sw=4
set ts=4

"Source the vimrc file after saving it
if has("autocmd")
  autocmd bufwritepost .vimrc source $MYVIMRC
	autocmd FileType python setlocal et sta sw=4 sts=4
endif

"history文件中需要记录的行数
set history=200
"使backspace正常处理indent, eol, start等
set backspace=2
"允许backspace和光标键跨越行边界
set whichwrap+=<,>,h,l
set wildmenu
set nocindent
"打开自动缩,继承前一行的缩进方式，特别适用于多行注释
set autoindent
"默认情况下手动折叠
set foldmethod=manual
"不自动换行(否：wrap)
set wrap
"缺省不产生备份文件
set nobackup
"不要生成swap文件，当buffer被丢弃的时候隐藏它
setlocal noswapfile
"set bufhidden=hide 
"在输入括号时光标会短暂地跳到与之相匹配的括号处，不影响输入
set showmatch
"匹配括号高亮的时间（单位是十分之一秒）
set matchtime=5
"在搜索时，输入的词句的逐字符高亮（类似firefox的搜索）
set incsearch
"不要闪烁
set novisualbell
"正确地处理中文字符的折行和拼接
set formatoptions+=mM
"文件 UTF-8 编码
set fileencodings=utf-8

"设定文件浏览器目录为当前目录
set bsdir=buffer
"设置编码
set enc=utf-8
"设置文件编码
set fenc=utf-8
"设置文件编码检测类型及支持格式
set fencs=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
"设置开启语法高亮
syntax on
"显示行号
set number
"查找结果高亮度显示
set textwidth=200
set hlsearch
"tab宽度
set expandtab
set tabstop=4
set smarttab
autocmd FileType ruby,haml,javascript,html,css,xml set ai
autocmd FileType ruby,haml,javascript,html,css,xml set sw=2
autocmd FileType ruby,haml,javascript,html,css,xml set ts=2
autocmd FileType ruby,haml,javascript,html,css,xml set sts=2
"Display extra whitespace
set list listchars=tab:»·,trail:·
"set cindent shiftwidth=4
"set autoindent shiftwidth=4
filetype plugin indent on
"把 F8 映射到 启动NERDTree插件
map <C-n> :NERDTree<CR>
colorscheme desert
set pastetoggle :<C-p>
