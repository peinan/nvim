# その他のプラグイン

このページでは、その他の機能を提供するプラグインを説明します。

## which-key.nvim <a href="https://github.com/folke/which-key.nvim" target="_blank" rel="noopener noreferrer"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" style="display: inline-block; vertical-align: middle; margin-left: 4px;"><path d="M18 13v6a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V8a2 2 0 0 1 2-2h6"></path><polyline points="15 3 21 3 21 9"></polyline><line x1="10" y1="14" x2="21" y2="3"></line></svg></a>

キーマップのヘルプを表示します。

**設定ファイル**: [`lua/alex/plugins/which-key.lua`](https://github.com/peinan/nvim/tree/main/lua/alex/plugins/which-key.lua)

**主な機能**:
- キーマップの候補表示
- プレフィックスキーの説明
- キーバインドの探索

**設定の特徴**:
- 遅延読み込み
- カスタムレイアウト

## nordic-transparent.nvim <a href="https://github.com/peinan/nordic-transparent.nvim" target="_blank" rel="noopener noreferrer"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" style="display: inline-block; vertical-align: middle; margin-left: 4px;"><path d="M18 13v6a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V8a2 2 0 0 1 2-2h6"></path><polyline points="15 3 21 3 21 9"></polyline><line x1="10" y1="14" x2="21" y2="3"></line></svg></a>

カラーテーマを提供します。

**設定ファイル**: [`lua/alex/plugins/nordic.lua`](https://github.com/peinan/nvim/tree/main/lua/alex/plugins/nordic.lua)

**主な機能**:
- 透明な背景
- Nordカラースキーム
- カスタマイズ可能な色設定

**設定の特徴**:
- 最高優先度で読み込まれる
- 起動時に即座に適用

## tmux.nvim <a href="https://github.com/aserowy/tmux.nvim" target="_blank" rel="noopener noreferrer"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" style="display: inline-block; vertical-align: middle; margin-left: 4px;"><path d="M18 13v6a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V8a2 2 0 0 1 2-2h6"></path><polyline points="15 3 21 3 21 9"></polyline><line x1="10" y1="14" x2="21" y2="3"></line></svg></a>

Tmuxとの統合を提供します。

**設定ファイル**: インライン設定

**主な機能**:
- Tmuxペイン間のナビゲーション
- ウィンドウ分割の統合
- フォーカス管理

**設定内容**:
```lua
require("tmux").setup()
```

## nvim-web-devicons <a href="https://github.com/nvim-tree/nvim-web-devicons" target="_blank" rel="noopener noreferrer"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" style="display: inline-block; vertical-align: middle; margin-left: 4px;"><path d="M18 13v6a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V8a2 2 0 0 1 2-2h6"></path><polyline points="15 3 21 3 21 9"></polyline><line x1="10" y1="14" x2="21" y2="3"></line></svg></a>

アイコンを提供します。

**設定ファイル**: [`lua/alex/plugins/nvim-web-devicons.lua`](https://github.com/peinan/nvim/tree/main/lua/alex/plugins/nvim-web-devicons.lua)

**主な機能**:
- ファイルタイプ別のアイコン
- カスタマイズ可能なアイコン

**使用されている場所**:
- dashboard-nvim
- lualine.nvim
- oil.nvim

## plenary.nvim <a href="https://github.com/nvim-lua/plenary.nvim" target="_blank" rel="noopener noreferrer"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" style="display: inline-block; vertical-align: middle; margin-left: 4px;"><path d="M18 13v6a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V8a2 2 0 0 1 2-2h6"></path><polyline points="15 3 21 3 21 9"></polyline><line x1="10" y1="14" x2="21" y2="3"></line></svg></a>

ユーティリティ関数を提供します。

**主な機能**:
- Luaユーティリティ関数
- 非同期処理
- テストフレームワーク

**使用されている場所**:
- telescope.nvim
- todo-comments.nvim

## nui.nvim <a href="https://github.com/MunifTanjim/nui.nvim" target="_blank" rel="noopener noreferrer"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" style="display: inline-block; vertical-align: middle; margin-left: 4px;"><path d="M18 13v6a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V8a2 2 0 0 1 2-2h6"></path><polyline points="15 3 21 3 21 9"></polyline><line x1="10" y1="14" x2="21" y2="3"></line></svg></a>

UIコンポーネントを提供します。

**主な機能**:
- ウィンドウ管理
- バッファ管理
- イベント処理

**使用されている場所**:
- noice.nvim

## nvim-notify <a href="https://github.com/rcarriga/nvim-notify" target="_blank" rel="noopener noreferrer"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" style="display: inline-block; vertical-align: middle; margin-left: 4px;"><path d="M18 13v6a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V8a2 2 0 0 1 2-2h6"></path><polyline points="15 3 21 3 21 9"></polyline><line x1="10" y1="14" x2="21" y2="3"></line></svg></a>

通知システムを提供します。

**主な機能**:
- 通知の表示
- カスタマイズ可能なスタイル
- 通知履歴

**使用されている場所**:
- noice.nvim

## quicker.nvim <a href="https://github.com/stevearc/quicker.nvim" target="_blank" rel="noopener noreferrer"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" style="display: inline-block; vertical-align: middle; margin-left: 4px;"><path d="M18 13v6a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V8a2 2 0 0 1 2-2h6"></path><polyline points="15 3 21 3 21 9"></polyline><line x1="10" y1="14" x2="21" y2="3"></line></svg></a>

Telescopeの拡張機能を提供します。

**設定ファイル**: [`lua/alex/plugins/quicker.lua`](https://github.com/peinan/nvim/tree/main/lua/alex/plugins/quicker.lua)

**主な機能**:
- Telescopeの操作の高速化
- カスタムアクション

**使用されている場所**:
- telescope.nvim

## vim-repeat <a href="https://github.com/tpope/vim-repeat" target="_blank" rel="noopener noreferrer"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" style="display: inline-block; vertical-align: middle; margin-left: 4px;"><path d="M18 13v6a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V8a2 2 0 0 1 2-2h6"></path><polyline points="15 3 21 3 21 9"></polyline><line x1="10" y1="14" x2="21" y2="3"></line></svg></a>

リピート機能を提供します。

**主な機能**:
- `.` コマンドの拡張
- プラグインコマンドのリピート

**使用されている場所**:
- leap.nvim

## nvim-treesitter-textobjects <a href="https://github.com/nvim-treesitter/nvim-treesitter-textobjects" target="_blank" rel="noopener noreferrer"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" style="display: inline-block; vertical-align: middle; margin-left: 4px;"><path d="M18 13v6a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V8a2 2 0 0 1 2-2h6"></path><polyline points="15 3 21 3 21 9"></polyline><line x1="10" y1="14" x2="21" y2="3"></line></svg></a>

Tree-sitterベースのテキストオブジェクトを提供します。

**主な機能**:
- コード構造に基づくテキストオブジェクト
- 関数、クラス、ブロックなどの選択

**使用されている場所**:
- nvim-treesitter

## LuaSnip <a href="https://github.com/L3MON4D3/LuaSnip" target="_blank" rel="noopener noreferrer"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" style="display: inline-block; vertical-align: middle; margin-left: 4px;"><path d="M18 13v6a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V8a2 2 0 0 1 2-2h6"></path><polyline points="15 3 21 3 21 9"></polyline><line x1="10" y1="14" x2="21" y2="3"></line></svg></a>

スニペットエンジンを提供します。

**依存関係**:
- friendly-snippets

**主な機能**:
- スニペットの展開
- カスタムスニペット
- LSPスニペットの統合

**使用されている場所**:
- nvim-cmp

## friendly-snippets <a href="https://github.com/rafamadriz/friendly-snippets" target="_blank" rel="noopener noreferrer"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" style="display: inline-block; vertical-align: middle; margin-left: 4px;"><path d="M18 13v6a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V8a2 2 0 0 1 2-2h6"></path><polyline points="15 3 21 3 21 9"></polyline><line x1="10" y1="14" x2="21" y2="3"></line></svg></a>

スニペット集を提供します。

**主な機能**:
- 多数の言語のスニペット
- VS Code互換のスニペット

**使用されている場所**:
- LuaSnip

