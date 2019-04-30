" Vundle设置，先下载
" $ git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
set nocompatible              " be iMproved, required
filetype off                  " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" 以下常用
Plugin 'scrooloose/nerdtree'
Plugin 'fatih/vim-go'
Plugin 'sickill/vim-monokai'
Plugin 'kien/ctrlp.vim'
Plugin 'Lokaltog/vim-powerline'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/syntastic'
Plugin 'Yggdroot/indentLine'
Plugin 'Valloric/YouCompleteMe'
Plugin 'taglist.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
" To ignore plugin indent changes, instead use:
" filetype plugin on
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"
syntax on       "语法高亮
filetype plugin indent on
colorscheme monokai
set t_Co=256
set showmode    " 左下角显示当前vim模式
set number      " 显示行号
set hlsearch    " 高亮search命中的文本
set incsearch   " 打开增量搜索模式,随着键入即时搜索
set ignorecase  " 搜索时忽略大小写
set smartcase   " 有一个或以上大写字母时仍大小写敏感

" fugitive、powerline设置状态行
set statusline+=%{fugitive#statusline()}    " 命令行（在状态行下）的高度，默认为1，这里是2
set laststatus=2    " Always show the status line - use 2 lines for the status bar
set showmatch       " 括号配对情况, 跳转并高亮一下匹配的括号
set matchtime=2     " How many tenths of a second to blink when matching brackets
set cursorline      " 突出显示当前行
set autoindent      " 打开自动缩进
set tabstop=4       " 设置Tab键的宽度
set shiftwidth=4    " 每一次缩进对应的空格数
set softtabstop=4   " 按退格键时可以一次删掉 4 个空格
set expandtab       " 将Tab自动转化成空格[需要输入真正的Tab键时，使用 Ctrl+V + Tab]
set shiftround      " 缩进时，取整 use multiple of shiftwidth when indenting with '<' and '>'
set encoding=utf-8  " 设置新文件的编码为 UTF-8
set fdm=indent      " 设置代码折叠方式

" 自动加载
" autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
" autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
" autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
" autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
" autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
autocmd FileType php set omnifunc=phpcomplete#CompletePHP

" NERDTree设置
"打开vim时如果没有文件自动打开NERDTree
autocmd vimenter * if !argc()|NERDTree|endif
"当NERDTree为剩下的唯一窗口时自动关闭
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
"打开vim时自动打开NERDTree
autocmd vimenter * NERDTree
map <C-n> :NERDTreeToggle<CR>
" 若使用Vim打开某个文件，则自动打开NERDTree的同时，将焦点也转移至新文件中
autocmd VimEnter * if argc() | wincmd p | endif

let Tlist_Ctags_Cmd = '/usr/local/bin/ctags'   "设定系统中ctags程序的位置
let Tlist_Show_One_File = 1                    "不同时显示多个文件的tag，只显示当前文件的
let Tlist_Exit_OnlyWindow = 1                  "如果taglist窗口是最后一个窗口，则退出vim
