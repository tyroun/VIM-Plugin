set helplang=cn
set encoding=utf-8
syntax enable
syntax on

"auto complete
filetype on
filetype plugin on
filetype indent on
set omnifunc=ccomplete "cppcomplete can't show return val of  C func 
set completeopt=longest,menu,menuone,preview
"CPP Complete set
set nocp
let OmniCpp_ShowScopeInAbbr= 0 
let OmniCpp_NamespaceSearch = 1
let OmniCpp_GlobalScopeSearch = 1
let OmniCpp_ShowAccess = 1 
let OmniCpp_ShowPrototypeInAbbr = 1 " 显示函数参数列表 
let OmniCpp_MayCompleteDot = 1   " 输入 .  后自动补全
let OmniCpp_MayCompleteArrow = 1 " 输入 -> 后自动补全 
let OmniCpp_MayCompleteScope = 1 " 输入 :: 后自动补全 
let OmniCpp_DefaultNamespaces = ["std", "_GLIBCXX_STD"]
highlight Pmenu    guibg=darkgrey  guifg=black
highlight PmenuSel guibg=lightgrey guifg=black
autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif

let g:winManagerWindowLayout='FileExplorer|TagList'
let g:winManagerWidth = 40
nmap wm :WMToggle<cr>

"minibufferexplorer
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1 

:set cscopequickfix=s-,c-,d-,i-,t-,e-
"Jump to 
"find C symnbol
nmap <C-j>s :cs find s <C-R>=expand("<cword>")<CR><CR> 
"find define
nmap <C-j>g :cs find g <C-R>=expand("<cword>")<CR><CR>
"find call
nmap <C-j>c :cs find c <C-R>=expand("<cword>")<CR><CR>
"find symbol
nmap <C-j>t :cs find t <C-R>=expand("<cword>")<CR><CR>

nmap <C-j>e :cs find e <C-R>=expand("<cword>")<CR><CR>
"find file
nmap <C-j>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
"find include file
nmap <C-j>i :cs find i <C-R>=expand("<cfile>")<CR><CR>
nmap <C-j>d :cs find d <C-R>=expand("<cword>")<CR><CR>

"Open a horizontal window 
"find C symnbol
nmap <C-o>s :scs find s <C-R>=expand("<cword>")<CR><CR> 
"find define
nmap <C-o>g :scs find g <C-R>=expand("<cword>")<CR><CR>
"find call
nmap <C-o>c :scs find c <C-R>=expand("<cword>")<CR><CR>
"find symbol
nmap <C-o>t :scs find t <C-R>=expand("<cword>")<CR><CR>

nmap <C-o>e :scs find e <C-R>=expand("<cword>")<CR><CR>
"find file
nmap <C-o>f :scs find f <C-R>=expand("<cfile>")<CR><CR>
"find include file
nmap <C-o>i :scs find i <C-R>=expand("<cfile>")<CR><CR>
nmap <C-o>d :scs find d <C-R>=expand("<cword>")<CR><CR>

"cscope update
nmap <F5> :!find . -iname '*.c' -o -iname '*.cpp' -o -iname '*.h' -o -iname '*.hpp' > cscope.files<CR>
                        \ :!cscope -Rbq<CR>
                        \ :cs reset<CR>
"c++ tags
nmap <F4> :!ctags -R --c++-kinds=+px --fields=+iaS --extra=+q<CR> 
"c tags
nmap <F6> :!ctags -R --c-kinds=+px --fields=+iaS --extra=+q<CR>

"close window , default C-w c
"nmap <C-c> :close<CR>

"replace selected text
:vnoremap s y:%s/<C-R>=escape(@", '\\/.*$^~[]')<CR>/

let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1
colorscheme desert
":set tags=/home/pi/cgminer_spi/tags
:set tags=~/.vim/systags
":cs add ~/cgminer_spi/cscope.out ~/cgminer_spi
:set number
"set folder function
:set fdm=syntax
"defalut open all fold
:set nofen

"run Man.vim
source $VIMRUNTIME/ftplugin/man.vim

"let g:enable_template=1
"let g:template_dir = "~/.vim/templates"


