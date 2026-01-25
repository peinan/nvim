# 機能一覧

このページでは、Neovim設定で利用可能なすべての機能を説明します。

## コア機能

### 環境対応

複数の実行環境に対応しています：

- **Neovide**: GUI版Neovim
- **WezTerm**: ターミナルエミュレータ
- **VSCode**: VSCode拡張機能として実行

**設定ファイル**: [`lua/peinan/environments/`](https://github.com/peinan/nvim/tree/main/lua/peinan/environments)

### LSP (Language Server Protocol)

強力な言語サポートを提供します：

- **自動フォーマット**: 保存時に自動フォーマット（オプション）
- **診断表示**: エラー、警告、情報、ヒントの表示
- **仮想テキスト**: インライン診断表示（トグル可能）
- **定義・参照**: シンボルの定義と参照へのジャンプ
- **ホバー情報**: シンボル情報の表示
- **シグネチャヘルプ**: 関数シグネチャの表示
- **リネーム**: シンボルのリネーム

**設定ファイル**: [`lua/peinan/native/lsp/`](https://github.com/peinan/nvim/tree/main/lua/peinan/native/lsp)

**キーマップ**:
- `RR` - リネーム
- `gi` - 実装へのジャンプ
- `gh` - ホバー情報
- `<C-\>` - シグネチャヘルプ
- `ge` - 診断フロート表示
- `[e` / `]e` - 前/次の診断
- `[E` / `]E` - 前/次のエラー
- `<leader>l` - LSP情報
- `<leader>d` - 仮想診断のトグル
- `<leader>f` - 自動フォーマットのトグル

### 補完

強力な補完機能を提供します：

- **LSP補完**: 言語サーバーからの補完
- **パス補完**: ファイルパスの補完
- **バッファ補完**: バッファ内のテキスト補完
- **コマンドライン補完**: コマンドラインでの補完

**設定ファイル**: [`lua/peinan/plugins/completion.lua`](https://github.com/peinan/nvim/blob/main/lua/peinan/plugins/completion.lua)

**キーマップ**:
- `<C-Space>` - 補完開始
- `<C-u>` / `<C-d>` - ドキュメントスクロール
- `<C-e>` - 補完中止
- `<CR>` - 補完確定

### ファイル管理

#### Oil.nvim

ファイルエクスプローラーとして機能します。

**設定ファイル**: [`lua/peinan/plugins/oil-nvim.lua`](https://github.com/peinan/nvim/blob/main/lua/peinan/plugins/oil-nvim.lua)

**キーマップ**:
- `<leader>e` - Oilのトグル

#### Telescope

強力なファジーファインダー：

- **ファイル検索**: ファイル名での検索
- **ライブグレップ**: テキスト検索
- **バッファ検索**: 開いているバッファの検索
- **ジャンプリスト**: ジャンプ履歴の検索
- **レジスタ**: レジスタの検索
- **ヘルプタグ**: Neovimヘルプの検索
- **マンページ**: マニュアルページの検索
- **スペルチェック**: スペル修正候補
- **診断**: LSP診断の検索
- **LSP機能**: 定義、参照、実装、シンボルの検索
- **TODO**: TODOコメントの検索

**設定ファイル**: [`lua/peinan/plugins/telescope.lua`](https://github.com/peinan/nvim/blob/main/lua/peinan/plugins/telescope.lua)

**キーマップ**:
- `ff` - ファイル検索（カレントディレクトリ）
- `fF` - ファイル検索（Gitルート）
- `fw` - カレントバッファ内検索
- `fW` - ライブグレップ（Gitルート）
- `fh` - ヘルプタグ
- `fk` - キーマップ検索
- `fj` - ジャンプリスト
- `fm` - マンページ
- `fo` - 最近開いたファイル（カレントディレクトリ）
- `fO` - 最近開いたファイル（ホーム）
- `fd` - 診断（カレントバッファ）
- `fD` - 診断（すべて）
- `fg` - レジスタ
- `ft` - TODO（カレントディレクトリ）
- `fT` - TODO（Gitルート）
- `fs` - ドキュメントシンボル
- `gr` - 参照
- `gd` - 定義
- `<C-n>` - バッファ一覧

### 編集機能

#### Leap

高速なテキスト移動：

- **前方ジャンプ**: `s`で前方にジャンプ
- **後方ジャンプ**: `S`で後方にジャンプ

**設定ファイル**: [`lua/peinan/plugins/leap.lua`](https://github.com/peinan/nvim/blob/main/lua/peinan/plugins/leap.lua)

**キーマップ**:
- `s` - 前方ジャンプ
- `S` - 後方ジャンプ

#### その他の編集機能

- **保存**: `<C-s>` - ファイル保存
- **Diffview**: `<leader>v` - Diffviewのトグル

**設定ファイル**: [`lua/peinan/keymaps/init.lua`](https://github.com/peinan/nvim/blob/main/lua/peinan/keymaps/init.lua)

### Git機能

#### GitSigns

Gitの変更をサインバーに表示：

- **追加**: 新規ファイル
- **変更**: 変更されたファイル
- **削除**: 削除されたファイル

**設定ファイル**: [`lua/peinan/plugins/gitsigns.lua`](https://github.com/peinan/nvim/blob/main/lua/peinan/plugins/gitsigns.lua)

#### Git Blame

Git blame情報を表示：

**設定ファイル**: [`lua/peinan/plugins/git-blame.lua`](https://github.com/peinan/nvim/blob/main/lua/peinan/plugins/git-blame.lua)

**キーマップ**:
- `<leader>b` - Git Blameのトグル

#### Diffview

Git差分を表示：

**設定ファイル**: [`lua/peinan/plugins/diffview.lua`](https://github.com/peinan/nvim/blob/main/lua/peinan/plugins/diffview.lua)

**キーマップ**:
- `<leader>v` - Diffviewのトグル

### UI/UX機能

#### Dashboard

起動時のダッシュボード：

- **最近のファイル**: 最近開いたファイル
- **最近のプロジェクト**: 最近開いたプロジェクト
- **ショートカット**: クイックアクション

**設定ファイル**: [`lua/peinan/plugins/dashboard.lua`](https://github.com/peinan/nvim/blob/main/lua/peinan/plugins/dashboard.lua)

#### Lualine

ステータスライン：

- **モード表示**: 現在のモード
- **ブランチ情報**: Gitブランチ
- **差分表示**: Git差分
- **診断表示**: LSP診断
- **LSPサーバー**: 接続中のLSPサーバー
- **各種状態**: 仮想診断、フォーマット、Zenモードの状態

**設定ファイル**: [`lua/peinan/plugins/lualine.lua`](https://github.com/peinan/nvim/blob/main/lua/peinan/plugins/lualine.lua)

#### Noice

コマンドラインUIの改善：

- **コマンド履歴**: コマンド履歴の表示
- **通知**: 通知の表示
- **LSPメッセージ**: LSPメッセージの表示

**設定ファイル**: [`lua/peinan/plugins/noice.lua`](https://github.com/peinan/nvim/blob/main/lua/peinan/plugins/noice.lua)

**キーマップ**:
- `<C-d>` / `<C-u>` - LSPメッセージスクロール
- `<C-m>` - Noiceの非表示

#### No Neck Pain

中央集中モード：

**設定ファイル**: [`lua/peinan/plugins/no-neck-pain.lua`](https://github.com/peinan/nvim/blob/main/lua/peinan/plugins/no-neck-pain.lua)

**キーマップ**:
- `<leader>n` - No Neck Painのトグル

#### Indent Blankline

インデントガイドの表示：

**設定ファイル**: [`lua/peinan/plugins/indent-blankline.lua`](https://github.com/peinan/nvim/blob/main/lua/peinan/plugins/indent-blankline.lua)

#### Neoscroll

スムーズなスクロール：

**設定ファイル**: [`lua/peinan/plugins/neoscroll-nvim.lua`](https://github.com/peinan/nvim/blob/main/lua/peinan/plugins/neoscroll-nvim.lua)

### 言語サポート

#### Tree-sitter

シンタックスハイライトとテキストオブジェクト：

**設定ファイル**: [`lua/peinan/plugins/treesitter.lua`](https://github.com/peinan/nvim/blob/main/lua/peinan/plugins/treesitter.lua)

#### Linter

リンターの統合：

**設定ファイル**: [`lua/peinan/plugins/linter.lua`](https://github.com/peinan/nvim/blob/main/lua/peinan/plugins/linter.lua)

#### TODO Comments

TODOコメントのハイライトと検索：

**設定ファイル**: [`lua/peinan/plugins/todo.lua`](https://github.com/peinan/nvim/blob/main/lua/peinan/plugins/todo.lua)

**キーマップ**:
- `ft` - TODO検索（カレントディレクトリ）
- `fT` - TODO検索（Gitルート）

### その他の機能

#### Which Key

キーマップのヘルプ表示：

**設定ファイル**: [`lua/peinan/plugins/which-key.lua`](https://github.com/peinan/nvim/blob/main/lua/peinan/plugins/which-key.lua)

#### Colorizer

カラーコードのハイライト：

**設定ファイル**: [`lua/peinan/plugins/colorizer.lua`](https://github.com/peinan/nvim/blob/main/lua/peinan/plugins/colorizer.lua)

## ウィンドウ管理

### ウィンドウ移動

- `<C-h>` - 左のウィンドウへ
- `<C-j>` - 下のウィンドウへ
- `<C-k>` - 上のウィンドウへ
- `<C-l>` - 右のウィンドウへ
- `<C-w><C-c>` - ウィンドウを閉じる

### バッファ管理

- `Q` - バッファを削除
- `<C-n>` - バッファ一覧（Telescope）

## クイックフィックス

- `}` - 次のクイックフィックスエントリ
- `{` - 前のクイックフィックスエントリ

## その他の便利機能

- `yp` - ファイル名をクリップボードにコピー
- `yP` - ファイルパスをクリップボードにコピー
- `gm` - マニュアルページを垂直分割で開く
- `<Esc>` - 検索ハイライトをクリア
- `z=` - スペル修正候補

