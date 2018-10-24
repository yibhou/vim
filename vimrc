
" set filetype=nginx

set encoding=utf-8
" 整个单词断行处理
set lbr
" 光标从行首和行末时可以跳行
set whichwrap=b,s,<,>,[,]
" 显示行号
set number
" 光标所在的当前行高亮
set cursorline

" 根据文件中其他地方的缩进空格个数来确定一个 tab 多少个空格
set smarttab
" 回车后自动缩进，即每行的缩进值与上一行相等；使用 noautoindent 取消设置
set autoindent

" 缩进的空格数
set shiftwidth=2
" 表示一个 tab 键所占的列数，默认 8
set tabstop=4
" 设置为非零数值表示敲入 tab 键时实际占有的列数，或者 Backspace 键删除的列数，注意：设置 smarttab 值会影响该属性
set softtabstop=2
" 是否在缩进和 Tab 键时使用空格替代；使用 noexpandtab 取消设置
set expandtab

set listchars=tab:>\ ,trail:-,extends:>,precedes:<,nbsp:+
set list

execute pathogen#infect()

syntax on

filetype plugin indent on

colorscheme vim-monokai/colors/monokai
set termguicolors
let g:monokai_term_italic = 1
let g:monokai_gui_italic = 1

map <C-n> :NERDTreeToggle<CR>
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

