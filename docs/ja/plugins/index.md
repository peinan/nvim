# プラグイン一覧

このページでは、Neovim設定で使用されているすべてのプラグインを一覧表示します。

## プラグイン管理

この設定では [Lazy.nvim](https://github.com/folke/lazy.nvim) を使用してプラグインを管理しています。

**設定ファイル**: [`lua/peinan/loader/init.lua`](https://github.com/peinan/nvim/tree/main/lua/peinan/loader/init.lua)

## プラグインカテゴリ

- [UI/UX](/ja/plugins/ui-ux) - ユーザーインターフェースとユーザーエクスペリエンス
- [編集・移動](/ja/plugins/editing) - テキスト編集と移動機能
- [言語サポート](/ja/plugins/language) - 言語サーバーとシンタックスハイライト
- [その他](/ja/plugins/others) - その他の機能

## プラグイン一覧表

| プラグイン名 | カテゴリ | 説明 |
|------------|---------|------|
| [dashboard-nvim](/ja/plugins/ui-ux#dashboard-nvim) | UI/UX | 起動時のダッシュボード |
| [no-neck-pain.nvim](/ja/plugins/ui-ux#no-neck-painnvim) | UI/UX | 中央集中モード |
| [neoscroll.nvim](/ja/plugins/ui-ux#neoscrollnvim) | UI/UX | スムーズなスクロール |
| [indent-blankline.nvim](/ja/plugins/ui-ux#indent-blanklinenvim) | UI/UX | インデントガイド |
| [oil.nvim](/ja/plugins/ui-ux#oilnvim) | UI/UX | ファイルエクスプローラー |
| [telescope.nvim](/ja/plugins/ui-ux#telescopenvim) | UI/UX | ファジーファインダー |
| [lualine.nvim](/ja/plugins/ui-ux#lualinenvim) | UI/UX | ステータスライン |
| [noice.nvim](/ja/plugins/ui-ux#noicenvim) | UI/UX | コマンドラインUI改善 |
| [gitsigns.nvim](/ja/plugins/ui-ux#gitsignsnvim) | UI/UX | Git変更の表示 |
| [diffview.nvim](/ja/plugins/ui-ux#diffviewnvim) | UI/UX | Git差分表示 |
| [git-blame.nvim](/ja/plugins/ui-ux#git-blamenvim) | UI/UX | Git blame表示 |
| [leap.nvim](/ja/plugins/editing#leapnvim) | 編集・移動 | 高速テキスト移動 |
| [nvim-treesitter](/ja/plugins/language#nvim-treesitter) | 言語サポート | シンタックスハイライト |
| [nvim-lspconfig](/ja/plugins/language#nvim-lspconfig) | 言語サポート | LSP設定 |
| [nvim-cmp](/ja/plugins/language#nvim-cmp) | 言語サポート | 補完エンジン |
| [nvim-lint](/ja/plugins/language#nvim-lint) | 言語サポート | リンター統合 |
| [todo-comments.nvim](/ja/plugins/language#todo-commentsnvim) | 言語サポート | TODOコメント管理 |
| [which-key.nvim](/ja/plugins/others#which-keynvim) | その他 | キーマップヘルプ |
| [nordic-transparent.nvim](/ja/plugins/others#nordic-transparentnvim) | その他 | カラーテーマ |
| [tmux.nvim](/ja/plugins/others#tmuxnvim) | その他 | Tmux統合 |

## 依存関係プラグイン

以下のプラグインは他のプラグインの依存関係として使用されています：

| プラグイン名 | 説明 |
|------------|------|
| [nvim-web-devicons](https://github.com/nvim-tree/nvim-web-devicons) | アイコン表示 |
| [plenary.nvim](https://github.com/nvim-lua/plenary.nvim) | ユーティリティ関数 |
| [nui.nvim](https://github.com/MunifTanjim/nui.nvim) | UIコンポーネント |
| [nvim-notify](https://github.com/rcarriga/nvim-notify) | 通知システム |
| [quicker.nvim](https://github.com/stevearc/quicker.nvim) | quickfix/location list UI を改善するプラグイン |
| [lazydev.nvim](https://github.com/folke/lazydev.nvim) | Lua開発支援 |
| [luvit-meta](https://github.com/Bilal2453/luvit-meta) | Lua開発支援 |
| [vim-repeat](https://github.com/tpope/vim-repeat) | リピート機能 |
| [nvim-treesitter-textobjects](https://github.com/nvim-treesitter/nvim-treesitter-textobjects) | Tree-sitterテキストオブジェクト |
| [cmp-omni](https://github.com/hrsh7th/cmp-omni) | 補完ソース |
| [cmp-nvim-lsp](https://github.com/hrsh7th/cmp-nvim-lsp) | LSP補完ソース |
| [cmp-buffer](https://github.com/hrsh7th/cmp-buffer) | バッファ補完ソース |
| [cmp-path](https://github.com/hrsh7th/cmp-path) | パス補完ソース |
| [cmp-cmdline](https://github.com/hrsh7th/cmp-cmdline) | コマンドライン補完ソース |
| [cmp_luasnip](https://github.com/saadparwaiz1/cmp_luasnip) | LuaSnip補完ソース |
| [LuaSnip](https://github.com/L3MON4D3/LuaSnip) | スニペットエンジン |
| [friendly-snippets](https://github.com/rafamadriz/friendly-snippets) | スニペット集 |

## プラグインの設定場所

すべてのプラグインの設定は [`lua/peinan/plugins/`](https://github.com/peinan/nvim/tree/main/lua/peinan/plugins) ディレクトリにあります。各プラグインには個別の設定ファイルがあります。

詳細は各カテゴリページを参照してください。

