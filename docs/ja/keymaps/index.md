# キーマップ一覧

このページでは、Neovim設定で使用されているすべてのキーマップを一覧表示します。

## リーダーキー

リーダーキーは `<Space>` に設定されています。

## モード表記

- `n` - Normal mode
- `i` - Insert mode
- `v` - Visual mode
- `t` - Terminal mode
- `c` - Command mode

## LSP関連

| キー | モード | 説明 | 設定ファイル |
|------|--------|------|-------------|
| `RR` | `n` | シンボルをリネーム | [`lua/peinan/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/peinan/keymaps/init.lua) |
| `gi` | `n` | 実装へのジャンプ | [`lua/peinan/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/peinan/keymaps/init.lua) |
| `gh` | `n` | ホバー情報を表示 | [`lua/peinan/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/peinan/keymaps/init.lua) |
| `<C-\>` | `n`, `i` | シグネチャヘルプを表示 | [`lua/peinan/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/peinan/keymaps/init.lua) |
| `ge` | `n` | 診断フロートを開く | [`lua/peinan/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/peinan/keymaps/init.lua) |
| `[e` | `n` | 前の診断へ移動 | [`lua/peinan/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/peinan/keymaps/init.lua) |
| `]e` | `n` | 次の診断へ移動 | [`lua/peinan/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/peinan/keymaps/init.lua) |
| `[E` | `n` | 前のエラーへ移動 | [`lua/peinan/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/peinan/keymaps/init.lua) |
| `]E` | `n` | 次のエラーへ移動 | [`lua/peinan/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/peinan/keymaps/init.lua) |
| `<leader>l` | `n` | LSP情報を表示 | [`lua/peinan/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/peinan/keymaps/init.lua) |
| `<leader>d` | `n` | 仮想診断のトグル | [`lua/peinan/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/peinan/keymaps/init.lua) |
| `<leader>f` | `n` | 自動フォーマットのトグル | [`lua/peinan/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/peinan/keymaps/init.lua) |

## Telescope関連

| キー | モード | 説明 | 設定ファイル |
|------|--------|------|-------------|
| `ff` | `n` | ファイル検索（カレントディレクトリ） | [`lua/peinan/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/peinan/keymaps/init.lua) |
| `fF` | `n` | ファイル検索（Gitルート） | [`lua/peinan/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/peinan/keymaps/init.lua) |
| `fw` | `n` | カレントバッファ内検索 | [`lua/peinan/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/peinan/keymaps/init.lua) |
| `fW` | `n` | ライブグレップ（Gitルート） | [`lua/peinan/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/peinan/keymaps/init.lua) |
| `fh` | `n` | ヘルプタグ検索 | [`lua/peinan/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/peinan/keymaps/init.lua) |
| `fk` | `n` | キーマップ検索 | [`lua/peinan/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/peinan/keymaps/init.lua) |
| `fj` | `n` | ジャンプリスト検索 | [`lua/peinan/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/peinan/keymaps/init.lua) |
| `fm` | `n` | マンページ検索 | [`lua/peinan/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/peinan/keymaps/init.lua) |
| `fo` | `n` | 最近開いたファイル（カレントディレクトリ） | [`lua/peinan/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/peinan/keymaps/init.lua) |
| `fO` | `n` | 最近開いたファイル（ホーム） | [`lua/peinan/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/peinan/keymaps/init.lua) |
| `fd` | `n` | 診断検索（カレントバッファ） | [`lua/peinan/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/peinan/keymaps/init.lua) |
| `fD` | `n` | 診断検索（すべて） | [`lua/peinan/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/peinan/keymaps/init.lua) |
| `fg` | `n`, `v` | レジスタ検索 | [`lua/peinan/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/peinan/keymaps/init.lua) |
| `ft` | `n` | TODO検索（カレントディレクトリ） | [`lua/peinan/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/peinan/keymaps/init.lua) |
| `fT` | `n` | TODO検索（Gitルート） | [`lua/peinan/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/peinan/keymaps/init.lua) |
| `fs` | `n` | ドキュメントシンボル検索 | [`lua/peinan/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/peinan/keymaps/init.lua) |
| `gr` | `n` | LSP参照検索 | [`lua/peinan/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/peinan/keymaps/init.lua) |
| `gd` | `n` | LSP定義検索 | [`lua/peinan/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/peinan/keymaps/init.lua) |
| `<C-n>` | `n` | バッファ一覧 | [`lua/peinan/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/peinan/keymaps/init.lua) |

## 編集関連

| キー | モード | 説明 | 設定ファイル |
|------|--------|------|-------------|
| `<C-s>` | `n`, `i`, `v` | ファイルを保存 | [`lua/peinan/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/peinan/keymaps/init.lua) |
| `s` | `n` | Leap前方ジャンプ | [`lua/peinan/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/peinan/keymaps/init.lua) |
| `S` | `n` | Leap後方ジャンプ | [`lua/peinan/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/peinan/keymaps/init.lua) |
| `<Esc>` | `i` | 挿入モードを終了（カーソル位置を保持） | [`lua/peinan/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/peinan/keymaps/init.lua) |
| `<Esc>` | `v` | ビジュアルモードを終了 | [`lua/peinan/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/peinan/keymaps/init.lua) |
| `i` | `v` | ビジュアルモードで大文字I | [`lua/peinan/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/peinan/keymaps/init.lua) |
| `p` | `v` | ペースト（レジスタを上書きしない） | [`lua/peinan/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/peinan/keymaps/init.lua) |
| `P` | `v` | ペースト（レジスタを上書きしない） | [`lua/peinan/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/peinan/keymaps/init.lua) |

## ウィンドウ管理

| キー | モード | 説明 | 設定ファイル |
|------|--------|------|-------------|
| `<C-h>` | `n`, `t` | 左のウィンドウへ移動 | [`lua/peinan/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/peinan/keymaps/init.lua) |
| `<C-j>` | `n`, `t` | 下のウィンドウへ移動 | [`lua/peinan/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/peinan/keymaps/init.lua) |
| `<C-k>` | `n`, `t` | 上のウィンドウへ移動 | [`lua/peinan/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/peinan/keymaps/init.lua) |
| `<C-l>` | `n`, `t` | 右のウィンドウへ移動 | [`lua/peinan/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/peinan/keymaps/init.lua) |
| `<C-w><C-c>` | `n`, `t` | ウィンドウを閉じる | [`lua/peinan/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/peinan/keymaps/init.lua) |

## バッファ管理

| キー | モード | 説明 | 設定ファイル |
|------|--------|------|-------------|
| `Q` | `n` | バッファを削除 | [`lua/peinan/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/peinan/keymaps/init.lua) |
| `<C-n>` | `n` | バッファ一覧（Telescope） | [`lua/peinan/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/peinan/keymaps/init.lua) |

## ファイル管理

| キー | モード | 説明 | 設定ファイル |
|------|--------|------|-------------|
| `<leader>e` | `n` | Oil（ファイルエクスプローラー）のトグル | [`lua/peinan/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/peinan/keymaps/init.lua) |

## Git関連

| キー | モード | 説明 | 設定ファイル |
|------|--------|------|-------------|
| `<leader>b` | `n` | Git Blameのトグル | [`lua/peinan/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/peinan/keymaps/init.lua) |
| `<leader>v` | `n` | Diffviewのトグル | [`lua/peinan/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/peinan/keymaps/init.lua) |

## UI関連

| キー | モード | 説明 | 設定ファイル |
|------|--------|------|-------------|
| `<leader>n` | `n` | No Neck Painのトグル | [`lua/peinan/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/peinan/keymaps/init.lua) |
| `<C-m>` | `n` | Noiceを非表示 | [`lua/peinan/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/peinan/keymaps/init.lua) |
| `<C-d>` | `n`, `i`, `s` | LSPメッセージを下にスクロール | [`lua/peinan/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/peinan/keymaps/init.lua) |
| `<C-u>` | `n`, `i`, `s` | LSPメッセージを上にスクロール | [`lua/peinan/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/peinan/keymaps/init.lua) |

## 補完関連

| キー | モード | 説明 | 設定ファイル |
|------|--------|------|-------------|
| `<C-Space>` | `i`, `c` | 補完を開始 | [`lua/peinan/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/peinan/keymaps/init.lua) |
| `<C-u>` | `i` | 補完ドキュメントを上にスクロール | [`lua/peinan/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/peinan/keymaps/init.lua) |
| `<C-d>` | `i` | 補完ドキュメントを下にスクロール | [`lua/peinan/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/peinan/keymaps/init.lua) |
| `<C-e>` | `i` | 補完を中止 | [`lua/peinan/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/peinan/keymaps/init.lua) |
| `<CR>` | `i` | 補完を確定 | [`lua/peinan/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/peinan/keymaps/init.lua) |

## その他

| キー | モード | 説明 | 設定ファイル |
|------|--------|------|-------------|
| `<Esc>` | `n` | 検索ハイライトをクリア | [`lua/peinan/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/peinan/keymaps/init.lua) |
| `K` | `n` | Neovimのデフォルトの K コマンドを無効化 | [`lua/peinan/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/peinan/keymaps/init.lua) |
| `gm` | `n` | マニュアルページを垂直分割で開く | [`lua/peinan/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/peinan/keymaps/init.lua) |
| `yp` | `n` | ファイル名をクリップボードにコピー | [`lua/peinan/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/peinan/keymaps/init.lua) |
| `yP` | `n` | ファイルパスをクリップボードにコピー | [`lua/peinan/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/peinan/keymaps/init.lua) |
| `}` | `n` | 次のクイックフィックスエントリ | [`lua/peinan/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/peinan/keymaps/init.lua) |
| `{` | `n` | 前のクイックフィックスエントリ | [`lua/peinan/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/peinan/keymaps/init.lua) |
| `z=` | `n` | スペル修正候補 | [`lua/peinan/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/peinan/keymaps/init.lua) |
| `<C-e>` | `n`, `v` | 下にスクロール | [`lua/peinan/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/peinan/keymaps/init.lua) |
| `<C-y>` | `n`, `v` | 上にスクロール | [`lua/peinan/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/peinan/keymaps/init.lua) |
| `<BS>` | `c` | カスタムバックスペース動作 | [`lua/peinan/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/peinan/keymaps/init.lua) |

## Oil.nvim内のキーマップ

| キー | 説明 | 設定ファイル |
|------|------|-------------|
| `<CR>` | ファイルを選択 | [`lua/peinan/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/peinan/keymaps/init.lua) |
| `-` | 親ディレクトリへ移動 | [`lua/peinan/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/peinan/keymaps/init.lua) |

## キーマップの設定場所

すべてのキーマップは [`lua/peinan/keymaps/init.lua`](https://github.com/peinan/nvim/tree/main/lua/peinan/keymaps/init.lua) で定義されています。このファイルは以下の関数に分かれています：

- `M.native()` - Neovimネイティブ機能のキーマップ
- `M.editing()` - 編集関連のキーマップ
- `M.lsp()` - LSP関連のキーマップ
- `M.telescope()` - Telescope関連のキーマップ
- `M.no_neck_pain()` - No Neck Pain関連のキーマップ
- `M.oil()` - Oil.nvim関連のキーマップ
- `M.leap()` - Leap関連のキーマップ
- `M.completion()` - 補完関連のキーマップ
- `M.blame()` - Git Blame関連のキーマップ

