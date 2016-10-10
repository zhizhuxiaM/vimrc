" 让配置变更立即生效
autocmd BufWritePost $MYVIMRC source $MYVIMRC
colorscheme default
filetype plugin on
" 定义快捷键的前缀，即<Leader>
let mapleader=";"
"不自动换行
set nowrap
"编码设置
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936 
set termencoding=utf-8
set encoding=utf-8
" 基于缩进或语法进行代码折叠
"set foldmethod=indent
set foldmethod=syntax
" 启动 vim 时关闭折叠代码
set nofoldenable
"显示换行和tab键
"set list

set ignorecase "搜索时忽略大小写
set nu  "设置行号
set cursorline  "光标所在行
"set cursorcolumn  "光标所在列
set showcmd "显示未完成的命令

set autoindent "智能缩进
set cindent "c风格缩进
"set autoindent 简单和上一行保持一致

set ruler  "显示光标位置
set laststatus=2 "文件状态始终显示

set incsearch "实时搜索功能
set showmatch "括号匹配

"设置tab键用空格代替
set smarttab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

"语法高亮
syntax enable
syntax on 

"打开NERD树
map <F10> :NERDTreeToggle<CR>
"map <c-w> <c-w>w

" 显示/隐藏 MiniBufExplorer 窗口
map <Leader>bl :MBEToggle<cr>
" buffer 切换快捷键
"map <C-Tab> :MBEbn<cr>
"map <C-S-Tab> :MBEbp<cr>


" 设置状态栏主题风格
let g:Powerline_colorscheme='solarized256'

"缩进插件设置
" 随 vim 自启动
let g:indent_guides_enable_on_vim_startup=1
" 从第二层开始可视化显示缩进
let g:indent_guides_start_level=2
" 色块宽度
 let g:indent_guides_guide_size=1
" 快捷键 i 开/关缩进可视化
:nmap <silent> <Leader>i <Plug>IndentGuidesToggle

"窗口跳转
map <c-j> <c-W>j
map <c-k> <c-W>k
map <c-h> <c-W>h
map <c-l> <c-W>l

"esc键映射为jk
inoremap jk <ESC> 
autocmd FileType php set omnifunc=phpcomplete#CompletePHP

"vundle配置
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')
"
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
"
Plugin 'The-NERD-tree'
Plugin 'Lokaltog/vim-powerline'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'fholgado/minibufexpl.vim'
Plugin 'scrooloose/nerdcommenter'
"
" " All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" " To ignore plugin indent changes, instead use:
" "filetype plugin on
" "
" " Brief help
" " :PluginList       - lists configured plugins
" " :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" " :PluginSearch foo - searches for foo; append `!` to refresh local cache
" " :PluginClean      - confirms removal of unused plugins; append `!` to
" auto-approve removal
" "
" " see :h vundle for more details or wiki for FAQ
" " Put your non-Plugin stuff after this line
