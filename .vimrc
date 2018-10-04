
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()

" インストール（導入）したいプラグインを下に記述、のちにノーマル状態で
" :PluginInstallを実行する　→ Done!と表示されれば問題なく完了

Plugin 'VundleVim/Vundle.vim'

Plugin 'scrooloose/nerdtree'

Plugin 'Lokaltog/powerline'

Plugin 'thinca/vim-quickrun'

Plugin 'vim-airline/vim-airline'

Plugin 'vim-airline/vim-airline-themes'

Plugin 'scrooloose/nerdcommenter'


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

set list
" 不可視文字を具現化
set listchars=tab:»-,trail:-,nbsp:%,eol:↲
" 不可視文字の具現化記号を設定
set clipboard+=unnamed
" クリップボードをmacOSと共有
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

let g:NERDSpaceDelims=1
" NERDCommentでコメント作成時に空白挿入

" Powerline系フォントを利用する
set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_idx_mode = 1
let g:airline#extensions#whitespace#mixed_indent_algo = 1
let g:airline_theme = 'tomorrow'
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.crypt = '🔒'
let g:airline_symbols.linenr = '☰'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.maxlinenr = '㏑'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.spell = 'Ꞩ'
let g:airline_symbols.notexists = '∄'
let g:airline_symbols.whitespace = 'Ξ'

" powerline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = '☰'
let g:airline_symbols.maxlinenr = ''

" QuickRun 実行結果を下に出す
" let g:quickrun_config={'*': {'split': ''}}
" set splitbelow

" QuickRun 実行結果を右に出す
let g:quickrun_config={'*': {'split': 'vertical'}}
set splitright

" augroup fileTypeIndent
"     autocmd!
"     autocmd BufNewFile,BufRead *.py setlocal tabstop=4 softtabstop=4 shiftwidth=4
" 	" Pythonコードならタブ入力時に空白四つ挿入
"     autocmd BufNewFile,BufRead *.rb setlocal tabstop=2 softtabstop=2 shiftwidth=2
" 	" Rubyコードならタブ入力時に空白二つ挿入
" augroup END
