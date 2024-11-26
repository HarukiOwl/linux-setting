
set termguicolors                                       " トゥルーカラーサポートを有効化
"これは一番上じゃないとバグります"

set clipboard=unnamedplus
set clipboard^=unnamed
set clipboard+=unnamedplus

" 基本設定
set shiftwidth=2           " インデント幅を2スペースに設定
syntax=on                  " シンタックスハイライトを有効化
set showmode               " モード（挿入、ノーマルなど）を表示
set number                 " 行番号を表示
set tabstop=2              " タブ幅を2スペースに設定

set clipboard=unnamed      " システムクリップボードを使用

set cursorline             " カーソル行をハイライト
set cursorcolumn           " カーソル列をハイライト
highlight CursorLine ctermfg=Blue ctermbg=Green  " カーソル行の色を設定

set autoindent             " 自動インデントを有効化


" Bashスクリプトヘッダーの略記
abbr _sh #!/bin/bash



" vim-plugによるプラグイン管理の開始
call plug#begin()


Plug 'folke/tokyonight.nvim' " 例: tokyonight.nvim をインストールする場合



Plug 'ntk148v/vim-horizon'                                " Horizonカラースキーム
Plug 'preservim/nerdtree'                                  " NERDTreeでファイルナビゲーション
Plug 'lambdalisue/fern.vim'                                " Fernファイルマネージャ
Plug 'nathanaelkane/vim-indent-guides'                     " インデントガイドを表示
Plug 'lambdalisue/fern-git-status.vim'                     " Fern用Gitステータス
Plug 'neoclide/coc.nvim', {'branch': 'release'}            " Coc.nvimで補完サポート
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }        " FZFで曖昧検索
Plug 'yuki-yano/fzf-preview.vim', { 'branch': 'release/rpc' }  " FZFプレビューサポート
Plug 'PhilRunninger/nerdtree-visual-selection'             " NERDTreeでのビジュアル選択
Plug 'b4b4r07/vim-shellutils'                              " シェルユーティリティ
Plug 'alvan/vim-closetag'                                  " HTMLタグの自動閉じ
Plug 'easymotion/vim-easymotion'                           " 簡単なナビゲーション
Plug 'Xuyuanp/nerdtree-git-plugin'                         " NERDTreeのGit統合
Plug 'posva/vim-vue'                                       " Vue.jsシンタックスハイライト
Plug 'tyru/open-browser.vim'                               " ブラウザでURLを開く
Plug 'lambdalisue/gina.vim'                                " Git統合ツール
Plug 'tpope/vim-commentary'                                " 簡単にコメントアウト
Plug 'tpope/vim-surround'                                  " 囲むオブジェクトサポート
Plug 'simeji/winresizer'                                   " ウィンドウのサイズ変更
Plug 'junegunn/goyo.vim'                                   " 作業に集中するためのプラグイン
Plug 'Shougo/unite.vim'                                    " Uniteインターフェースで曖昧検索
Plug 'Shougo/neomru.vim'                                   " 最近使ったファイルリスト
Plug 'ctrlpvim/ctrlp.vim'                                  " ファイルとバッファの検索
Plug 'vimplugin/project.vim'                               " プロジェクト管理
Plug 'Quramy/tsuquyomi'                                    " TypeScriptサポート
"Plug 'Shougo/vimproc.vim', {'do' : 'make'}                 " 非同期処理のためのプラグイン


Plug 'vim-test/vim-test'                                   " Vim内でテスト実行
Plug 'vim-scripts/ScrollColors'                            " スクロール時のカラー設定
Plug 'kyazdani42/blue-moon'                                " Blue Moonカラースキーム
Plug 'AlessandroYorba/Breve'                               " Breveカラースキーム
Plug 'vim-jp/vimdoc-ja'                                    " 日本語Vimドキュメント




call plug#end()                                            " プラグイン管理終了






"let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files']  " CtrlPでGitを使用

" 挿入モードでの括弧と引用符のマッピング
inoremap { {}<LEFT>
inoremap [ []<LEFT>
inoremap ( ()<LEFT>
inoremap " ""<LEFT>
inoremap ' ''<LEFT>



" 検索とナビゲーションのショートカット
nnoremap <ESC><ESC> :nohlsearch<CR>                     " 検索ハイライトをクリア

nnoremap <C-n> :NERDTree<CR>                            " NERDTreeを開く
nnoremap <C-t> :NERDTreeToggle<CR>                      " NERDTreeのトグル

" 各種コマンド



command! Co :colorscheme                                " カラースキームを変更
command! Eve :colorscheme evening                       " eveningカラースキームをセット
command! Bre :colorscheme breve                         " breveカラースキームをセット
command! Horizon :colorscheme horizon                   " horizonカラースキームをセット


colorscheme tokyonight " 例: tokyonight.nvim を有効にする場合



" 日本語のVimヘルプ設定
set helplang=ja,en                                      " ヘルプ言語を日本語と英語に設定



" ステータスラインのカスタマイズ
set statusline=%F                                       " ステータスラインにファイルパスを表示







"add"

" Tabキーで候補を下に移動
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
" Shift+Tabで候補を上に移動
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" Enterキーで補完候補を確定
inoremap <expr> <CR> pumvisible() ? coc#pum#confirm() : "\<CR>"



command W w | !python3 %

command! SS :so ~/.config/nvim/init.vim                 " init.vimを再読み込み


noremap ss ^                                            " 行頭に移動
noremap ;; $                                            " 行末に移動



