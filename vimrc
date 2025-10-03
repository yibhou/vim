
set encoding=utf-8
" 不与vi编辑器兼容
set nocompatible
" 整个单词断行处理
set lbr
" 光标从行首和行末时可以跳行
set whichwrap+=h,l,<,>,[,]
" 显示行号
set number
" 光标所在的当前行高亮
set cursorline

" 根据文件中其他地方的缩进空格个数来确定一个tab多少个空格
set smarttab
" 回车后自动缩进 缩进值与上一行相等 使用noautoindent取消设置
set autoindent

" 缩进的空格数
set shiftwidth=2
" 表示一个tab键所占的列数 默认为8
set tabstop=4
" 设置为非零数值表示敲入tab键时实际占有的列数 或者backspace键删除的列数 设置smarttab值会影响该属性
set softtabstop=2
" 是否在缩进和tab键时使用空格替代 使用noexpandtab取消设置
set expandtab
" backspace键 indent=删除缩进 eol=删除行
set backspace=indent,eol,start

set listchars=tab:>\ ,trail:-,extends:>,precedes:<,nbsp:+
set list

" 代码提示使用浮动菜单 设置menu,preview同时打开顶部预览窗口
set completeopt=menu
" 代码差异标志更新时间
set updatetime=1000

let mapleader=','
let maplocalleader=mapleader

" 语法高亮
syntax on
filetype plugin indent on

" 快捷命令
command! E Explore

" 插件管理器
execute pathogen#infect()

" 主题

set background=dark
let g:solarized_termcolors=256
colorscheme solarized
call togglebg#map('<F5>')

" colorscheme vim-monokai/colors/monokai
" set termguicolors
" let g:monokai_term_italic = 1
" let g:monokai_gui_italic = 1

" 插件

" let g:airline_theme = 'luna'
let g:airline_solarized_bg='dark'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline_powerline_fonts = 1

let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
noremap <silent> <LocalLeader>n :NERDTreeToggle<CR>
imap <silent> <LocalLeader>n <Esc>:NERDTreeToggle<CR>

let g:gitgutter_enabled = 1
let g:gitgutter_max_signs = 500
let g:gitgutter_sign_added = '+'
let g:gitgutter_sign_removed = '_'
let g:gitgutter_sign_removed_first_line = '‾'
let g:gitgutter_sign_modified = '*'
let g:gitgutter_sign_modified_removed = '*_'
let g:gitgutter_override_sign_column_highlight = 1
let g:gitgutter_highlight_lines = 1
let g:gitgutter_map_keys = 0
nmap [g <Plug>GitGutterPrevHunk
nmap ]g <Plug>GitGutterNextHunk
omap gc <Plug>GitGutterTextObjectInnerPending
xmap gc <Plug>GitGutterTextObjectInnerVisual
nmap <Leader>gp <Plug>GitGutterPreviewHunk
nmap <Leader>gs <Plug>GitGutterStageHunk
nmap <Leader>gu <Plug>GitGutterUndoHunk
highlight GitGutterAdd cterm=bold ctermbg=194 ctermfg=35
highlight GitGutterDelete cterm=bold ctermbg=224 ctermfg=197
highlight GitGutterChange cterm=bold ctermbg=195 ctermfg=39
highlight link GitGutterChangeDelete GitGutterChange
highlight DiffAdd cterm=none ctermbg=194 ctermfg=none
highlight DiffDelete cterm=none ctermbg=224 ctermfg=none
highlight DiffChange cterm=none ctermbg=195 ctermfg=none
" highlight DiffChange cterm=none ctermbg=230 ctermfg=none
" highlight DiffChange cterm=none ctermbg=231 ctermfg=none

let g:signify_disable_by_default = 1
let g:signify_vcs_list = ['git']
let g:signify_realtime = 1
let g:signify_sign_add = '+'
let g:signify_sign_delete = '_'
let g:signify_sign_delete_first_line = '‾'
let g:signify_sign_change = '*'
let g:signify_sign_changedelete = '*'
let g:signify_sign_show_count = 1
let g:signify_line_highlight = 1
highlight SignifySignAdd cterm=bold ctermbg=194 ctermfg=35
highlight SignifySignDelete cterm=bold ctermbg=224 ctermfg=197
highlight SignifySignChange cterm=bold ctermbg=230 ctermfg=179

let g:user_emmet_complete_tag = 1
let g:user_emmet_leader_key = '<C-y>'
let g:user_emmet_settings = webapi#json#decode(join(readfile(expand('$HOME/.vim/snippets*.json')), ''))
let g:user_emmet_install_global = 1

augroup omnifunc
  autocmd!
  autocmd FileType html setlocal
    \ omnifunc=htmlcomplete#CompleteTags
  autocmd FileType css setlocal
    \ omnifunc=csscomplete#CompleteCSS
  autocmd FileType javascript setlocal
    \ omnifunc=javascriptcomplete#CompleteJS
augroup end

let g:SuperTabDefaultCompletionType = 'context'
let g:SuperTabCompletionContexts = ['s:ContextText', 's:ContextDiscover']
let g:SuperTabContextTextOmniPrecedence = ['&omnifunc', '&completefunc']
let g:SuperTabContextDiscoverDiscovery = ['&completefunc:<c-x><c-u>', '&omnifunc:<c-x><c-o>']
