" Use Vim settings, rather than Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

" 当有termguicolors特性时开启GUI配色
if has("termguicolors")
    set termguicolors
endif

" With a map leader it's possible to do extra key combinations
let mapleader=","

" 使用 jk 代替 esc 键 
inoremap jk <esc>

" operation map
onoremap p i(
onoremap in( :<c-u>normal! f(vi(<cr>
onoremap il( :<c-u>normal! F(vi(<cr>
nnoremap <leader>N :setlocal number!<cr>

" 代码缩进设置
set smarttab      "开启时，在行首按TAB将加入sw个空格，否则加入ts个空格
set tabstop=4     "编辑时一个TAB字符占多少个空格的位置
set softtabstop=4 "方便在开启了et后使用退格（backspace）键，每次退格将删除X个空格
set shiftwidth=4  "使用每层缩进的空格数
set expandtab     "是否将输入的TAB自动展开成空格。开启后要输入TAB，需要Ctrl-V<TAB>

set history=1024
set number                   " 显示行号
set autoread                 " 文件在Vim之外修改过，自动重新读入
set completeopt=longest,menu " 更好的insert模式自动完成
set modeline                 " 允许被编辑的文件以注释的形式设置Vim选项
set hidden                   " switching buffers without saving
set ruler                    " show the cursor position all the time
set showcmd                  " display incomplete commands
set showmode
set wildmenu                 " show enhanced completion
set wildmode=list:longest    " together with wildmenu
set wildignore+=.git,.svn    " Version control
set wildignore+=*.jpg,*.bmp,*.gif,*.png,*.jpeg   " binary images
set wildignore+=*.o,*.obj,*.exe,*.dll,*.manifest " compiled object files
set wildignore+=*.sw?                            " Vim swap files
set wildignore+=*.DS_Store                       " OSX bullshit
set wildignore+=*.pyc                            " Python byte code
set wildignore+=*.orig                           " Merge resolution files
set visualbell                                   " flash screen when bell rings
set ttyfast                                      " indicate faster terminal connection
set laststatus=2                                 " always show status line
set cpoptions+=J
set linebreak                                    " break the line by words
set scrolloff=3                                  " show at least 3 lines around the current cursor position
set sidescroll=1
set sidescrolloff=10
set virtualedit+=block
set lazyredraw
set nolist
set listchars=tab:▸\ ,eol:¬,extends:❯,precedes:❮
set splitbelow
set splitright
set fillchars=diff:⣿
" Make Vim able to edit crontab files again.
set backupskip=/tmp/*,/private/tmp/*"

"快速退出vim
nnoremap <C-c> :qall!<CR>

"搜索相关的设置
set showmatch  " show matching brackets/parenthesis
set magic      " 根据vim说明默认开启此参数
set ignorecase " 忽略大小写
set smartcase  " case sensitive when uc present

"清空搜索结果高亮显示
set hlsearch
nnoremap <leader>/ :nohlsearch<CR>

"Tab navigation mappings
map tn :tabn<CR>
map tp :tabp<CR>
map tm :tabm
map tt :tabnew<cr>
map ts :tab split<CR>

" 在命令行里面, 用%%表示当前文件路径
cnoremap %% <C-R>=fnameescape(expand('%:h')).'/'<cr>

" command mode, ctrl-a to head， ctrl-e to tail
cnoremap <C-j> <t_kd>
cnoremap <C-k> <t_ku>
cnoremap <C-a> <Home>
cnoremap <C-e> <End>

"设置菜单和帮助的语言，默认改为英语
set fileencodings=utf-8,gbk "使用utf-8或gbk打开文件
set encoding=utf8
set langmenu=en_us.utf-8
language message en_US.UTF-8
let $LC_ALL='en_US.UTF-8'
let $LANG='en_US.UTF-8'
    
set statusline=                              " clear the statusline for when vimrc is reloaded
set statusline+=%-3.3n\                      " buffer number
set statusline+=%F\                          " file name
set statusline+=%=                           " right align
set statusline+=%#error#
set statusline+=%m
set statusline+=%*
set statusline+=%h%r%w                       " flags
set statusline+=[%{strlen(&ft)?&ft:'none'},  " filetype
set statusline+=%{strlen(&fenc)?&fenc:&enc}, " encoding
set statusline+=%{&fileformat}]              " file format
set statusline+=%b,0x%-8B\                   " current char
set statusline+=%-14.(%l,%c%V%)\ %<%P        " offset

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
set signcolumn=yes
