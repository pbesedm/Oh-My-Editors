"去掉讨厌的有关vi一致性模式，避免以前版本的一些bug和局限
set nocompatible
"不生成备份
set nobackup
set nowritebackup

"语法高亮度显示
syntax on

"检测文件的类型
filetype on

"下面两行在进行编写代码时，在格式对起上很有用；
"第一行，vim使用自动对起，也就是把当前行的对起格式应用到下一行；
"第二行，依据上面的对起格式，智能的选择对起方式，对于类似C语言编
set autoindent
set smartindent
set cindent
"将 C++ 作用域声明置于其所在代码块的 N 个字符后
"将 C++ 作用域声明后面的语句置于对应标号的 N 个字符后
set cino=g2h2
"set indentexpr

"查找高亮set display=lastline
set hlsearch
"set nohls

"即时搜索
set incsearch

"不要工具条
set guioptions-=T
"不要菜单栏
set guioptions-=m
"不要滚动条
set guioptions-=rL

"当vim进行编辑时，如果命令错误，会发出一个响声，该设置去掉响声
set vb t_vb=

"在编辑过程中，在右下角显示光标位置的状态行
set ruler

"在屏幕最下面加一行状态显示栏
"set ai si ek hid ru wmnu nosol

set shortmess=atI
set modeline

"设置匹配模式，类似当输入一个左括号时会匹配相应的那个右括号
set showmatch

" 能显示多少显示多少。
set display=lastline

colorscheme koehler

" 自动补全命令时候使用菜单式匹配列表
set wildmenu
" 允许退格键删除
set backspace=indent,eol,start
"set backspace=2
" 启用鼠标
set mouse=a
set ttymouse=xterm2
set fdm=syntax
" 使鼠标用起来象微软 Windows
" 左键单击            定位光标
" 左键拖动            在选择模式下选中文本（参见 |09.4|）
" 按住Shift，右键单击     把选中的文本扩展到当前的光标位置
" 中键单击            从剪贴板中粘贴文本
" 右键单击            显示一个弹出式菜单
behave mswin
10
" 设置多编码文本
" multi-encoding setting
set fileencodings=utf-8,cp936,big5,euc-jp,euc-kr,latin1,ucs-bom

filetype plugin on
filetype indent on
set completeopt=longest,menu

" allow backspacing over everything in insert mode

set history=50		" keep 50 lines of command line history
set showcmd		" display incomplete commands
set guifont=DejaVu\ Sans\ Mono\ 11

set number
set ignorecase

set fo=cqrtmB ls=2
set com=s1:/*,mb:*,ex:*/,://,b:#
set vi=%,'50,\"50,:50 lcs=tab:>-,trail:.,extends:>

"set expandtab " 使用space代替tab.
set tabstop=4 " 四个空格。
set shiftwidth=4 " 自动缩进的宽度。

"宽度80列提示
set textwidth=80
set colorcolumn=+1

let VIM_HATE_SPACE_ERRORS=1

" Highlight space errors in C/C++ source files (Vim tip #935)
if $VIM_HATE_SPACE_ERRORS != '0'
	let c_space_errors=1
endif


if has("gui_running")
	colorscheme delek
endif

" Uncomment the following to have Vim jump to the last position when
" reopening a file
if has("autocmd")
	au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
				\| exe "normal g'\"" | endif
endif

fun SetupVAM()
	  set runtimepath+=~/.vim/addons/vim-addon-manager
	  call vam#ActivateAddons([
		                        \ 'a.vim_-_Alternate_Files_quickly_.c',
	  							\ 'bufexplorer.zip',
	  							\ 'comments1528',
	  							\ 'multvals',
	  							\ 'genutils',
	  							\ 'snipmate',
	  							\ 'tabular',
	  							\ 'clang_complete',
	  							\ 'Powerline',
	  							\ 'Tagbar',
	  							\ 'echofunc',
	  							\ 'fugitive',
	  							\ 'dwm'
		                        \ ])
endf
call SetupVAM()

let t:input_status = 0
function OnInsertLeave()
	set cursorline
	let t:input_status = system("fcitx-remote")
	if t:input_status == 2
		let l:a = system("fcitx-remote -c")
	endif
	let _resp = system("remote_tilda -c")
	"let _cmd_ = 'dbus-send --session --print-reply --dest=org.gnome.Guake.DBus /DBusInterface org.gnome.Guake.DBusInterface.set_cursor_block'
	"let _cmd_ = 'gconftool-2 --type string --set /apps/gnome-terminal/profiles/Profile0/cursor_shape block'
	"let _resp = system(_cmd_)
endfunction

function OnInsertEnter()
	set nocursorline
	if t:input_status == 2
		let l:a = system("fcitx-remote -o")
	endif
	let _resp = system("remote_tilda -o")
	"let _cmd_ = 'dbus-send --session --print-reply --dest=org.gnome.Guake.DBus /DBusInterface org.gnome.Guake.DBusInterface.set_cursor_ibeam'
	"let _cmd_ = 'gconftool-2 --type string --set /apps/gnome-terminal/profiles/Profile0/cursor_shape ibeam'
	"let _resp = system(_cmd_)
endfunction

"插入模式改变光标形状
autocmd! InsertLeave * call OnInsertLeave()
autocmd! InsertEnter * call OnInsertEnter()
set timeoutlen=50

let g:clang_auto_select=1
let g:clang_complete_auto=1
let g:clang_complete_copen=1
let g:clang_hl_errors=1
let g:clang_periodic_quickfix=0
let g:clang_snippets=1
let g:clang_snippets_engine="clang_complete"
let g:clang_conceal_snippets=1
let g:clang_exec="clang"
let g:clang_user_options=""
let g:clang_auto_user_options="path, .clang_complete"
let g:clang_use_library=1
let g:clang_library_path="/usr/lib/llvm/"
let g:clang_sort_algo="priority"
let g:clang_complete_macros=1
let g:clang_complete_patterns=0
let g:clic_filename="index.db"
nnoremap <Leader>q :call g:ClangUpdateQuickFix()<CR>

nnoremap <Leader>r :call ClangGetReferences()<CR>
nnoremap <Leader>d :call ClangGetDeclarations()<CR>
nnoremap <Leader>s :call ClangGetSubclasses()<CR>

imap <C-f> <C-o>l
imap <C-a> <C-o>^
imap <C-e> <C-o>$
imap <C-b> <C-o>h

" Key mappings to ease browsing long lines
noremap  <Down>      gj
noremap  <Up>        gk
inoremap <Down> <C-O>gj
inoremap <Up>   <C-O>gk

cmap <c-a> <home>
cmap <c-e> <end>
cnoremap <c-b> <left>
cnoremap <c-d> <del>
cnoremap <c-f> <right>
cnoremap <c-n> <down>
cnoremap <c-p> <up>

"cnoremap <C-n> <up>
"cnoremap <C-p> <down>


"inoremap ( ()<ESC>i
"inoremap ) <c-r>=ClosePair(')')<CR>
"inoremap { {}<ESC>i
"inoremap } <c-r>=ClosePair('}')<CR>
"inoremap [ []<ESC>i
"inoremap ] <c-r>=ClosePair(']')<CR>
"inoremap < <><ESC>i
"inoremap > <c-r>=ClosePair('>')<CR>
"inoremap " ""<ESC>i
"inoremap ' ''<ESC>i
nmap <silent> <F2> :TagbarToggle<CR>

"let g:tagbar_ctags_bin = 'ctags'
"let g:tagbar_width = 30

" Alt + ] 打开一个预览窗口显示光标处变量和函数的原型
nmap <silent> ]  :ptag <C-R>=expand("<cword>")<CR><CR>
nmap <silent> [  :pts <C-R>=expand("<cword>")<CR><CR>
nmap <silent> [C :ptn<CR>
nmap <silent> [D :ptp<CR>

"f8 自动格式化代码"
map <F8> ggVG:!indent 2>/dev/null<CR>G

function ClosePair(char)
	if getline('.')[col('.') - 1] == a:char
		return "\<Right>"
	else
		return a:char
	endif
endf

function UpdateTags()
	let _cmd_ = 'ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .'
	"let _cmd_ = 'ctags -R  --fields=+iaS --extra=+q .'
	let _resp = system(_cmd_)
	unlet _cmd_
	unlet _resp
endfunction
autocmd! BufWritePost *.c,*.cpp,*.cc,*.h,*.hpp call UpdateTags()

autocmd BufNewFile *.c,*.h,*.cc,*.hpp,*.cpp	silent 0r ~/.vim/skeleton.c
autocmd BufNewFile *.py 					silent 0r ~/.vim/skeleton.py
autocmd BufNewFile *.sh 					silent 0r ~/.vim/skeleton.sh
autocmd BufNewFile *.pl 					silent 0r ~/.vim/skeleton.pl
autocmd BufNewFile *.tex 					silent 0r ~/.vim/skeleton.tex
autocmd BufNewFile rfparm.conf 				silent 0r ~/.vim/rfparm.conf
autocmd BufNewFile * normal G

" 轻松编辑相同目录下的文件 vim_tips(2,64)
function! CHANGE_CURR_DIR()
    let _dir = expand("%:p:h")
    exec "cd " . _dir
    unlet _dir
endfunction

"autocmd BufEnter * call CHANGE_CURR_DIR()
function! RemoveTrailingSpace()
	if $VIM_HATE_SPACE_ERRORS != '0' &&
				\(&filetype == 'c' || &filetype == 'cpp' || &filetype == 'vim')
		normal m`
		silent! :%s/\s\+$//e
		normal ``
	endif
endfunction
" Remove trailing spaces for C/C++ and Vim files
au BufWritePre *  call RemoveTrailingSpace()
au BufEnter /usr/include/c++/*    setf cpp

function CFileSet()
	"set tags+=~/.vim/tags/stl_tags
	"set tags+=~/.vim/tags/qt_tags
	"set tags+=~/.vim/tags/gtkmm_tags
	"set tags+=~/.vim/tags/gtk_tags
	set tags=tags;/
	"let OmniCpp_DefaultNamespaces = ["std", "_GLIBCXX_STD"]
	"let OmniCpp_GlobalScopeSearch = 1
	"let OmniCpp_SelectFirstItem = 1
	"let OmniCpp_ShowScopeInAbbr = 1
	"let OmniCpp_NamespaceSearch = 1
	"let OmniCpp_ShowPrototypeInAbbr = 1
	"let OmniCpp_MayCompleteScope = 1
	"let OmniCpp_ShowAccess = 1
	"let OmniCpp_MayCompleteDot = 1
	"let OmniCpp_MayCompleteArrow = 1
endfunction

autocmd FileType c,cpp call CFileSet()
autocmd FileType c,cpp set fdm=syntax
autocmd FileType python set et sta ai sw=4 ts=4 sts=4 fdm=indent

set ch=1
set foldlevel=9
let g:load_doxygen_syntax=1
let g:vimgdb_debug_file = ""

set laststatus=2
set t_Co=256
let g:Powerline_symbols = 'fancy'
set noshowcmd
"command -nargs=0 ToggleSketch call ToggleSketch()

"自动保存
set autowrite

"当前行高亮
set cul
highlight CursorLine term=bold cterm=bold ctermbg=0 gui=bold guibg=DarkGrey
highlight Search term=reverse cterm=reverse ctermbg=DarkGrey gui=reverse guibg=DarkGrey
highlight MatchParen ctermfg=cyan ctermbg=black guibg=white guifg=DarkCyan

" 80列提示
"highlight OverLength ctermbg=red ctermfg=white guibg=#592929
"match OverLength /\%81v.*/
"set colorcolumn=81

" 鼠标粘贴的时候不会乱
set pastetoggle=<F3>

" 显示tab及行尾空格
set listchars=tab:>-,trail:-
"set list
