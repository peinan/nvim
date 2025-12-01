# UI/UX プラグイン

このページでは、ユーザーインターフェースとユーザーエクスペリエンスに関連するプラグインを説明します。

## dashboard-nvim <a href="https://github.com/glepnir/dashboard-nvim" target="_blank" rel="noopener noreferrer"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" style="display: inline-block; vertical-align: middle; margin-left: 4px;"><path d="M18 13v6a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V8a2 2 0 0 1 2-2h6"></path><polyline points="15 3 21 3 21 9"></polyline><line x1="10" y1="14" x2="21" y2="3"></line></svg></a>

起動時のダッシュボードを提供します。

**設定ファイル**: [`lua/alex/plugins/dashboard.lua`](https://github.com/peinan/nvim/tree/main/lua/alex/plugins/dashboard.lua)

**主な機能**:
- 最近開いたファイルの表示
- 最近開いたプロジェクトの表示
- クイックアクションショートカット

**設定内容**:
```lua
config.mru = {
    label = " Recent Files",
    limit = 10,
}

config.project = {
    label = " Recent Projects",
    limit = 10,
}

config.shortcut = {
    { desc = "󰠮  Notes ", action = "enew | set filetype=markdown", key = "n" },
    { desc = "   Update ", action = "Lazy sync", key = "uu" },
    { desc = " 󰱼  File ", action = "Telescope find_files cwd=~", key = "ff" },
    { desc = " 󰓅  Profile ", action = "Lazy profile", key = "p" },
    { desc = " 󰅙  Quit ", action = "q!", key = "q" },
}
```

## no-neck-pain.nvim <a href="https://github.com/shortcuts/no-neck-pain.nvim" target="_blank" rel="noopener noreferrer"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" style="display: inline-block; vertical-align: middle; margin-left: 4px;"><path d="M18 13v6a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V8a2 2 0 0 1 2-2h6"></path><polyline points="15 3 21 3 21 9"></polyline><line x1="10" y1="14" x2="21" y2="3"></line></svg></a>

中央集中モードを提供します。エディタを中央に配置し、サイドに余白を追加します。

**設定ファイル**: [`lua/alex/plugins/no-neck-pain.lua`](https://github.com/peinan/nvim/tree/main/lua/alex/plugins/no-neck-pain.lua)

**キーマップ**:
- `<leader>n` - No Neck Painのトグル

## neoscroll.nvim <a href="https://github.com/karb94/neoscroll.nvim" target="_blank" rel="noopener noreferrer"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" style="display: inline-block; vertical-align: middle; margin-left: 4px;"><path d="M18 13v6a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V8a2 2 0 0 1 2-2h6"></path><polyline points="15 3 21 3 21 9"></polyline><line x1="10" y1="14" x2="21" y2="3"></line></svg></a>

スムーズなスクロールアニメーションを提供します。

**設定ファイル**: [`lua/alex/plugins/neoscroll-nvim.lua`](https://github.com/peinan/nvim/tree/main/lua/alex/plugins/neoscroll-nvim.lua)

**主な機能**:
- スムーズなスクロールアニメーション
- カスタマイズ可能なスクロール速度

## indent-blankline.nvim <a href="https://github.com/lukas-reineke/indent-blankline.nvim" target="_blank" rel="noopener noreferrer"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" style="display: inline-block; vertical-align: middle; margin-left: 4px;"><path d="M18 13v6a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V8a2 2 0 0 1 2-2h6"></path><polyline points="15 3 21 3 21 9"></polyline><line x1="10" y1="14" x2="21" y2="3"></line></svg></a>

インデントガイドを表示します。

**設定ファイル**: [`lua/alex/plugins/indent-blankline.lua`](https://github.com/peinan/nvim/tree/main/lua/alex/plugins/indent-blankline.lua)

**主な機能**:
- インデントレベルの可視化
- カスタマイズ可能な表示スタイル

## oil.nvim <a href="https://github.com/stevearc/oil.nvim" target="_blank" rel="noopener noreferrer"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" style="display: inline-block; vertical-align: middle; margin-left: 4px;"><path d="M18 13v6a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V8a2 2 0 0 1 2-2h6"></path><polyline points="15 3 21 3 21 9"></polyline><line x1="10" y1="14" x2="21" y2="3"></line></svg></a>

ファイルエクスプローラーとして機能します。

**設定ファイル**: [`lua/alex/plugins/oil-nvim.lua`](https://github.com/peinan/nvim/tree/main/lua/alex/plugins/oil-nvim.lua)

**キーマップ**:
- `<leader>e` - Oilのトグル
- `<CR>` - ファイルを選択
- `-` - 親ディレクトリへ移動

**主な機能**:
- バッファとして動作するファイルエクスプローラー
- ファイル操作（コピー、移動、削除など）
- Git統合

## telescope.nvim <a href="https://github.com/nvim-telescope/telescope.nvim" target="_blank" rel="noopener noreferrer"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" style="display: inline-block; vertical-align: middle; margin-left: 4px;"><path d="M18 13v6a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V8a2 2 0 0 1 2-2h6"></path><polyline points="15 3 21 3 21 9"></polyline><line x1="10" y1="14" x2="21" y2="3"></line></svg></a>

強力なファジーファインダーを提供します。

**設定ファイル**: [`lua/alex/plugins/telescope.lua`](https://github.com/peinan/nvim/tree/main/lua/alex/plugins/telescope.lua)

**依存関係**:
- plenary.nvim
- popup.nvim
- quicker.nvim

**主な機能**:
- ファイル検索
- テキスト検索（ライブグレップ）
- バッファ検索
- LSP機能（定義、参照、実装など）
- 診断検索
- TODO検索
- その他多数の検索機能

**キーマップ**: [キーマップ一覧](/keymaps/)のTelescope関連セクションを参照

**設定の特徴**:
- カスタムレイアウト設定
- プレビュー機能
- カスタムボーダー文字
- ファイルタイプ別の設定

## lualine.nvim <a href="https://github.com/nvim-lualine/lualine.nvim" target="_blank" rel="noopener noreferrer"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" style="display: inline-block; vertical-align: middle; margin-left: 4px;"><path d="M18 13v6a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V8a2 2 0 0 1 2-2h6"></path><polyline points="15 3 21 3 21 9"></polyline><line x1="10" y1="14" x2="21" y2="3"></line></svg></a>

ステータスラインを提供します。

**設定ファイル**: [`lua/alex/plugins/lualine.lua`](https://github.com/peinan/nvim/tree/main/lua/alex/plugins/lualine.lua)

**依存関係**:
- nvim-web-devicons

**主な機能**:
- モード表示
- Gitブランチ表示
- Git差分表示
- LSP診断表示
- LSPサーバー表示
- 各種状態表示（仮想診断、フォーマット、Zenモードなど）
- 録画状態表示

**設定の特徴**:
- 透明な背景テーマ
- ファイルタイプ別のカスタム設定（Oil、Telescopeなど）
- 動的な色変更（状態に応じて）

## noice.nvim <a href="https://github.com/folke/noice.nvim" target="_blank" rel="noopener noreferrer"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" style="display: inline-block; vertical-align: middle; margin-left: 4px;"><path d="M18 13v6a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V8a2 2 0 0 1 2-2h6"></path><polyline points="15 3 21 3 21 9"></polyline><line x1="10" y1="14" x2="21" y2="3"></line></svg></a>

コマンドラインUIを改善します。

**設定ファイル**: [`lua/alex/plugins/noice.lua`](https://github.com/peinan/nvim/tree/main/lua/alex/plugins/noice.lua)

**依存関係**:
- nui.nvim
- nvim-notify

**主な機能**:
- コマンド履歴の表示
- 通知の表示
- LSPメッセージの表示
- コマンドラインの改善

**キーマップ**:
- `<C-d>` / `<C-u>` - LSPメッセージスクロール
- `<C-m>` - Noiceを非表示

## gitsigns.nvim <a href="https://github.com/lewis6991/gitsigns.nvim" target="_blank" rel="noopener noreferrer"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" style="display: inline-block; vertical-align: middle; margin-left: 4px;"><path d="M18 13v6a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V8a2 2 0 0 1 2-2h6"></path><polyline points="15 3 21 3 21 9"></polyline><line x1="10" y1="14" x2="21" y2="3"></line></svg></a>

Gitの変更をサインバーに表示します。

**設定ファイル**: [`lua/alex/plugins/gitsigns.lua`](https://github.com/peinan/nvim/tree/main/lua/alex/plugins/gitsigns.lua)

**主な機能**:
- 追加された行の表示
- 変更された行の表示
- 削除された行の表示
- ステージング状態の表示

**設定内容**:
```lua
local signs = {
    add = { text = "│" },
    change = { text = "│" },
    delete = { text = "│" },
    topdelete = { text = "│" },
    changedelete = { text = "│" },
    untracked = { text = "│" },
}
```

## diffview.nvim <a href="https://github.com/sindrets/diffview.nvim" target="_blank" rel="noopener noreferrer"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" style="display: inline-block; vertical-align: middle; margin-left: 4px;"><path d="M18 13v6a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V8a2 2 0 0 1 2-2h6"></path><polyline points="15 3 21 3 21 9"></polyline><line x1="10" y1="14" x2="21" y2="3"></line></svg></a>

Git差分を表示します。

**設定ファイル**: [`lua/alex/plugins/diffview.lua`](https://github.com/peinan/nvim/tree/main/lua/alex/plugins/diffview.lua)

**キーマップ**:
- `<leader>v` - Diffviewのトグル

**主な機能**:
- Git差分の表示
- ファイル差分の表示
- コミット履歴の表示

## git-blame.nvim <a href="https://github.com/f-person/git-blame.nvim" target="_blank" rel="noopener noreferrer"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" style="display: inline-block; vertical-align: middle; margin-left: 4px;"><path d="M18 13v6a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V8a2 2 0 0 1 2-2h6"></path><polyline points="15 3 21 3 21 9"></polyline><line x1="10" y1="14" x2="21" y2="3"></line></svg></a>

Git blame情報を表示します。

**設定ファイル**: [`lua/alex/plugins/git-blame.lua`](https://github.com/peinan/nvim/tree/main/lua/alex/plugins/git-blame.lua)

**キーマップ**:
- `<leader>b` - Git Blameのトグル

**主な機能**:
- 各行のGit blame情報の表示
- コミット情報の表示

