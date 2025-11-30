# ディレクトリ構造

このページでは、Neovim設定のディレクトリ構造と各ディレクトリの役割について説明します。

## 全体構造

```
nvim/
├── init.lua                    # エントリーポイント
├── lua/
│   └── alex/                   # メイン設定モジュール
│       ├── init.lua            # メイン初期化ファイル
│       ├── environments/       # 環境別設定
│       ├── keymaps/            # キーマップ定義
│       ├── loader/             # プラグインローダー
│       ├── native/             # Neovimネイティブ機能
│       ├── plugins/            # プラグイン設定
│       └── utils/              # ユーティリティ関数
├── after/                      # ファイルタイプ別設定
└── docs/                       # ドキュメント
```

## 各ディレクトリの詳細

### `init.lua`

Neovimのエントリーポイント。`lua/alex`モジュールを読み込みます。

**ファイル**: [`init.lua`](https://github.com/peinan/nvim/tree/main/init.lua)

```lua
require("alex")
```

### [`lua/alex/`](https://github.com/peinan/nvim/tree/main/lua/alex)

メインの設定モジュール。すべての設定がこのディレクトリ配下に配置されています。

#### `lua/alex/init.lua`

メインの初期化ファイル。以下の順序でモジュールを読み込みます：

1. 環境チェック（`alex.environments`）
2. ネイティブオプション設定（`alex.native.options`）
3. プラグインローダー（`alex.loader`）
4. ネイティブ機能（`alex.native`）
5. キーマップ（`alex.keymaps`）

**ファイル**: [`lua/alex/init.lua`](https://github.com/peinan/nvim/tree/main/lua/alex/init.lua)

#### [`lua/alex/environments/`](https://github.com/peinan/nvim/tree/main/lua/alex/environments)

環境別の設定を管理します。Neovide、WezTerm、VSCodeなど、実行環境に応じた設定を適用します。

**主要ファイル**:
- `init.lua` - 環境検出と初期化
- `neovide.lua` - Neovide固有の設定
- `wezterm.lua` - WezTerm固有の設定
- `vscode.lua` - VSCode拡張機能用の設定

**役割**:
- 環境変数の設定
- 環境固有のオプション設定
- 環境に応じた初期化の制御

#### [`lua/alex/keymaps/`](https://github.com/peinan/nvim/tree/main/lua/alex/keymaps)

すべてのキーマップ定義を管理します。一箇所に集約することで、キーバインドの競合を防ぎます。

**主要ファイル**:
- `init.lua` - キーマップの初期化と定義
- `utils.lua` - キーマップ用のユーティリティ関数

**役割**:
- すべてのキーバインドの定義
- モード別（normal, insert, visual, terminal, command）のキーマップ
- プラグイン固有のキーマップ

#### [`lua/alex/loader/`](https://github.com/peinan/nvim/tree/main/lua/alex/loader)

プラグインのローディングを管理します。Lazy.nvimを使用してプラグインを遅延読み込みします。

**主要ファイル**:
- `bootstrap.lua` - Lazy.nvimのブートストラップ
- `init.lua` - Lazy.nvimの初期化
- `plugins.lua` - プラグイン定義一覧

**役割**:
- プラグインのインストールと更新
- 遅延読み込みの設定
- プラグインの依存関係管理

#### [`lua/alex/native/`](https://github.com/peinan/nvim/tree/main/lua/alex/native)

Neovimのネイティブ機能の設定を管理します。プラグインに依存しない機能を実装します。

**主要ファイル**:
- `init.lua` - ネイティブ機能の初期化
- `options.lua` - Neovimオプション設定
- [`lsp/`](https://github.com/peinan/nvim/tree/main/lua/alex/native/lsp) - LSP設定
  - `init.lua` - LSPの初期化と診断設定
  - `defaults.lua` - デフォルトLSP設定
  - `tsn.lua` - TypeScript/Node.js固有の設定
- `statuscolumn.lua` - ステータスカラムの設定
- `terminal.lua` - ターミナル設定
- `winbar.lua` - ウィンドウバーの設定

**役割**:
- Neovimの基本オプション設定
- LSPの設定と診断
- UI要素のカスタマイズ

#### [`lua/alex/plugins/`](https://github.com/peinan/nvim/tree/main/lua/alex/plugins)

各プラグインの設定ファイルを管理します。プラグインごとに個別の設定ファイルがあります。

**主要ファイル**:
- `dashboard.lua` - ダッシュボード設定
- `telescope.lua` - Telescope設定
- `treesitter.lua` - Tree-sitter設定
- `completion.lua` - 補完設定
- `lualine.lua` - ステータスライン設定
- その他多数のプラグイン設定

**役割**:
- プラグイン固有の設定
- プラグイン間の連携設定

#### [`lua/alex/utils/`](https://github.com/peinan/nvim/tree/main/lua/alex/utils)

ユーティリティ関数を提供します。

**主要ファイル**:
- `init.lua` - ユーティリティの集約
- `chars.lua` - 文字定数
- `git.lua` - Git関連ユーティリティ
- `lua.lua` - Lua関連ユーティリティ
- `neovim.lua` - Neovim関連ユーティリティ

**役割**:
- 共通関数の提供
- ヘルパー関数の集約

### `after/`

ファイルタイプ別の設定を管理します。特定のファイルタイプに対して追加の設定を適用します。

**主要ファイル**:
- `ftplugin/*.lua` - ファイルタイプ別の設定

**役割**:
- ファイルタイプ固有のオプション設定
- ファイルタイプ固有のキーマップ

## モジュール間の依存関係

詳細な依存関係については、[依存関係図](/structure/dependencies)を参照してください。

