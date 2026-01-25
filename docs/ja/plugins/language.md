# 言語サポートプラグイン

このページでは、言語サーバーとシンタックスハイライトに関連するプラグインを説明します。

## nvim-treesitter <a href="https://github.com/nvim-treesitter/nvim-treesitter" target="_blank" rel="noopener noreferrer"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" style="display: inline-block; vertical-align: middle; margin-left: 4px;"><path d="M18 13v6a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V8a2 2 0 0 1 2-2h6"></path><polyline points="15 3 21 3 21 9"></polyline><line x1="10" y1="14" x2="21" y2="3"></line></svg></a>

シンタックスハイライトとテキストオブジェクトを提供します。

**設定ファイル**: [`lua/peinan/plugins/treesitter.lua`](https://github.com/peinan/nvim/tree/main/lua/peinan/plugins/treesitter.lua)

**依存関係**:
- nvim-treesitter-textobjects

**主な機能**:
- 高速なシンタックスハイライト
- テキストオブジェクトの拡張
- インクリメンタル選択
- コードフォールディング

**設定の特徴**:
- 自動インストール
- テキストオブジェクトの設定
- ハイライトの優先度設定

## nvim-lspconfig <a href="https://github.com/neovim/nvim-lspconfig" target="_blank" rel="noopener noreferrer"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" style="display: inline-block; vertical-align: middle; margin-left: 4px;"><path d="M18 13v6a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V8a2 2 0 0 1 2-2h6"></path><polyline points="15 3 21 3 21 9"></polyline><line x1="10" y1="14" x2="21" y2="3"></line></svg></a>

LSP（Language Server Protocol）の設定を提供します。

**設定ファイル**: [`lua/peinan/native/lsp/`](https://github.com/peinan/nvim/tree/main/lua/peinan/native/lsp)

**主な機能**:
- 言語サーバーの設定
- 診断の表示
- コード補完
- 定義・参照へのジャンプ
- リネーム
- フォーマット

**設定ファイル**:
- [`lua/peinan/native/lsp/init.lua`](https://github.com/peinan/nvim/tree/main/lua/peinan/native/lsp/init.lua) - LSPの初期化と診断設定
- [`lua/peinan/native/lsp/defaults.lua`](https://github.com/peinan/nvim/tree/main/lua/peinan/native/lsp/defaults.lua) - デフォルトLSP設定
- [`lua/peinan/native/lsp/tsn.lua`](https://github.com/peinan/nvim/tree/main/lua/peinan/native/lsp/tsn.lua) - TypeScript/Node.js固有の設定

**主な機能**:
- 診断の表示（エラー、警告、情報、ヒント）
- 仮想テキスト診断（トグル可能）
- 自動フォーマット（トグル可能）
- 診断フロート表示
- 診断間の移動

**キーマップ**: [キーマップ一覧](/keymaps/)のLSP関連セクションを参照

## nvim-cmp <a href="https://github.com/hrsh7th/nvim-cmp" target="_blank" rel="noopener noreferrer"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" style="display: inline-block; vertical-align: middle; margin-left: 4px;"><path d="M18 13v6a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V8a2 2 0 0 1 2-2h6"></path><polyline points="15 3 21 3 21 9"></polyline><line x1="10" y1="14" x2="21" y2="3"></line></svg></a>

補完エンジンを提供します。

**設定ファイル**: [`lua/peinan/plugins/completion.lua`](https://github.com/peinan/nvim/tree/main/lua/peinan/plugins/completion.lua)

**依存関係**:
- cmp-omni
- cmp-nvim-lsp
- cmp-buffer
- cmp-path
- cmp-cmdline
- cmp_luasnip
- LuaSnip
- friendly-snippets

**主な機能**:
- LSP補完
- パス補完
- バッファ補完
- コマンドライン補完
- スニペット補完

**設定内容**:
```lua
local sources = CMP.config.sources({
    { name = "nvim_lsp" },
    { name = "path" },
})
```

**キーマップ**:
- `<C-Space>` - 補完開始
- `<C-u>` / `<C-d>` - ドキュメントスクロール
- `<C-e>` - 補完中止
- `<CR>` - 補完確定

**補完ソース**:
- **nvim_lsp**: LSPからの補完
- **path**: ファイルパスの補完
- **buffer**: バッファ内のテキスト補完（検索時）
- **cmdline**: コマンドライン補完

## nvim-lint <a href="https://github.com/mfussenegger/nvim-lint" target="_blank" rel="noopener noreferrer"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" style="display: inline-block; vertical-align: middle; margin-left: 4px;"><path d="M18 13v6a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V8a2 2 0 0 1 2-2h6"></path><polyline points="15 3 21 3 21 9"></polyline><line x1="10" y1="14" x2="21" y2="3"></line></svg></a>

リンターを統合します。

**設定ファイル**: [`lua/peinan/plugins/linter.lua`](https://github.com/peinan/nvim/tree/main/lua/peinan/plugins/linter.lua)

**主な機能**:
- 複数のリンターの統合
- 自動リント
- 診断の表示

**設定の特徴**:
- LSPアタッチ時に自動的に有効化
- ファイルタイプ別のリンター設定

## todo-comments.nvim <a href="https://github.com/folke/todo-comments.nvim" target="_blank" rel="noopener noreferrer"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" style="display: inline-block; vertical-align: middle; margin-left: 4px;"><path d="M18 13v6a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V8a2 2 0 0 1 2-2h6"></path><polyline points="15 3 21 3 21 9"></polyline><line x1="10" y1="14" x2="21" y2="3"></line></svg></a>

TODOコメントをハイライトし、検索可能にします。

**設定ファイル**: [`lua/peinan/plugins/todo.lua`](https://github.com/peinan/nvim/tree/main/lua/peinan/plugins/todo.lua)

**依存関係**:
- plenary.nvim

**主な機能**:
- TODOコメントのハイライト
- カスタムキーワードのサポート
- Telescopeとの統合

**サポートされているキーワード**:
- `FIX` - バグ修正
- `HACK` - ハック
- `TODO` - タスク
- `WARN` - 警告
- `PERF` - パフォーマンス
- `NOTE` - メモ
- `TEST` - テスト

**設定内容**:
```lua
require("todo-comments").setup({
    signs = false,
    keywords = {
        FIX = { icon = "" },
        HACK = { icon = "󱠇" },
        TODO = { icon = "" },
        WARN = { icon = "" },
        PERF = { icon = "󱑂" },
        NOTE = { icon = "" },
        TEST = { icon = "󰙨" },
    },
})
```

**キーマップ**:
- `ft` - TODO検索（カレントディレクトリ）
- `fT` - TODO検索（Gitルート）

## lazydev.nvim <a href="https://github.com/folke/lazydev.nvim" target="_blank" rel="noopener noreferrer"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" style="display: inline-block; vertical-align: middle; margin-left: 4px;"><path d="M18 13v6a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V8a2 2 0 0 1 2-2h6"></path><polyline points="15 3 21 3 21 9"></polyline><line x1="10" y1="14" x2="21" y2="3"></line></svg></a>

Lua開発を支援します。

**依存関係**:
- luvit-meta

**主な機能**:
- Lua APIの補完
- 型情報の表示

**設定の特徴**:
- Luaファイルタイプでのみ有効
- LSPアタッチ時に自動的に有効化

