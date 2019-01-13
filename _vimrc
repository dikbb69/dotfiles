call plug#begin()
Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }
call plug#end()
set autowrite

function! OpenModifiableQF()				"QuickFixでmodifiableの自動化
        cw						":copenでQuicListを選択
        set modifiable					":.ccでカーソル先のエラーへジャンプ
        set nowrap
endfunction
autocmd QuickfixCmdPost vimgrep call OpenModifiableQF()


map <C-n> :cnext<CR>			"エラーチェックの次へ移動コマンド
map <C-m> :cprevious<CR>		"前へ移動コマンド
nnoremap <leader>a :cclose<CR>		"QuickFixを閉じる
nnoremap <leader>o :ccopen<CR> 		"QuickFixを開く
let g:go_auto_sameids = 1  		"自動ハイライト
let mapleader = "\<Space>"		"<space>をleaderにマッピング
map <leader>r :GoRun<CR>		"<space>＋rで実行
map <leader>b :GoBuild<CR>		"
map <leader>t :GoTest<CR>		"
