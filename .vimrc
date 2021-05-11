
set nocompatible
filetype off
set langmenu=en_US.UTF-8
language C

set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()

" インストール（導入）したいプラグインを下に記述、のちにノーマル状態で
" :PluginInstallを実行する　→ Done!と表示されれば問題なく完了

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'Lokaltog/powerline'
Plugin 'tpope/vim-markdown'
Plugin 'kannokanno/previm'
Plugin 'tyru/open-browser.vim'

call vundle#end()
filetype plugin indent on


set backup
set autoread

set autoindent
" インデント状態を保持
set smartindent
" 自動的にインデント追加
set number
" 行数表示
set cursorline
" カーソル行をハイライト
set showmatch
" 対応する括弧を強調表示
set laststatus=2
" ステータス業を常に表示
set tabstop=4
" タブ文字が占める幅（空白文字の数ではない）
set shiftwidth=4
" 自動インデントで生じさせる幅
set noexpandtab
" タブにはタブを
colorscheme hybrid 
" カラースキーム設定
set bg=dark
" カラースキームのタイプ設定
set nowritebackup
" バックアップは本体を保存したら消去

"""""""""""""""""""
" 自動的に閉じ括弧挿入
" imap { {}<LEFT>
" imap [ []<LEFT>
" imap ( ()<LEFT>
""""""""""""""""""

set list
" 不可視文字を具現化
set listchars=tab:»-,trail:-,nbsp:%,eol:↲
" 不可視文字の具現化記号を設定
set clipboard+=unnamed
" クリップボードをmacOSと共有
autocmd ColorScheme * highlight LineNr ctermfg=100
" 行数の色だけを変更
set foldcolumn=3
set foldmethod=indent
" 折りたたみ設定
"autocmd vimenter * NERDTree
" NERDTreeを起動時に有効化
syntax on

" 以下、キーマッピング設定リスト
nmap <C-t> :NERDTreeToggle<CR>
" NERDTree起動
nmap <Space>r :QuickRun<CR>
" PythonをQuickRun
map ,p <Plug>(operator-autopep8)
" ,pafとキーバインドすれば自動整形


let g:indent_guides_enable_on_vim_startup = 1
" Vim起動時にIndent Guideをオンに
" .mdを閲覧しやすく！
""" markdown {{{
   autocmd BufRead,BufNewFile *.mkd  set filetype=markdown
   autocmd BufRead,BufNewFile *.md  set filetype=markdown
   " Need: kannokanno/previm
   nnoremap <silent> <C-p> :PrevimOpen<CR> " Ctrl-pでプレビュー
   " 自動で折りたたまないようにする
   let g:vim_markdown_folding_disabled=1
   let g:previm_enable_realtime = 1
 " }}}


