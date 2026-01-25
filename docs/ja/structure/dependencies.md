# 依存関係

このページでは、Neovim設定内のモジュール間の依存関係を説明します。

## モジュール依存関係図

```mermaid
graph TD
    A[init.lua] --> B[alex/init.lua]
    B --> C[peinan.environments]
    B --> D[peinan.native.options]
    B --> E[peinan.loader]
    B --> F[peinan.native]
    B --> G[peinan.keymaps]

    C --> C1[neovide.lua]
    C --> C2[wezterm.lua]
    C --> C3[vscode.lua]

    E --> E1[peinan.loader.bootstrap]
    E --> E2[peinan.loader.plugins]

    F --> F1[peinan.native.options]
    F --> F2[peinan.native.terminal]
    F --> F3[peinan.native.statuscolumn]
    F --> F4[peinan.native.winbar]
    F --> F5[peinan.native.lsp]

    F5 --> F5A[peinan.native.lsp.defaults]
    F5 --> F5B[peinan.native.lsp.tsn]

    G --> G1[peinan.keymaps.utils]
    G --> G2[peinan.utils]

    E2 --> P1[peinan.plugins.*]
    P1 --> P2[peinan.utils]

    style A fill:#e1f5ff
    style B fill:#fff4e1
    style E fill:#e8f5e9
    style F fill:#f3e5f5
    style G fill:#fce4ec
```

## 初期化フロー

```mermaid
sequenceDiagram
    participant N as Neovim
    participant I as init.lua
    participant A as alex/init.lua
    participant E as environments
    participant O as native.options
    participant L as loader
    participant N2 as native
    participant K as keymaps

    N->>I: 起動
    I->>A: require("peinan")
    A->>E: 環境チェック
    E-->>A: should_setup
    alt should_setup == true
        A->>O: オプション設定
        A->>L: プラグインローダー初期化
        L->>L: Lazy.nvimセットアップ
        A->>N2: ネイティブ機能初期化
        N2->>N2: LSP設定
        A->>K: キーマップ初期化
    else should_setup == false
        A-->>I: 早期リターン
    end
```

## プラグイン依存関係

```mermaid
graph LR
    subgraph "UI/UX"
        P1[dashboard-nvim]
        P2[lualine.nvim]
        P3[noice.nvim]
        P4[oil.nvim]
        P5[no-neck-pain.nvim]
    end

    subgraph "編集・移動"
        P6[leap.nvim]
        P7[telescope.nvim]
    end

    subgraph "言語サポート"
        P8[nvim-treesitter]
        P9[nvim-lspconfig]
        P10[nvim-cmp]
        P11[nvim-lint]
    end

    subgraph "依存関係"
        D1[nvim-web-devicons]
        D2[plenary.nvim]
        D3[nui.nvim]
        D4[nvim-notify]
    end

    P1 --> D1
    P2 --> D1
    P4 --> D1
    P7 --> D2
    P3 --> D3
    P3 --> D4
    P10 --> P9
    P11 --> P9
```

## キーマップ依存関係

```mermaid
graph TD
    K[peinan.keymaps.init] --> K1[native]
    K --> K2[editing]
    K --> K3[lsp]
    K --> K4[telescope]
    K --> K5[no_neck_pain]

    K1 --> U1[peinan.keymaps.utils]
    K2 --> U1
    K3 --> L1[peinan.native.lsp]
    K4 --> T1[telescope.builtin]
    K5 --> N1[peinan.plugins.no-neck-pain]

    U1 --> U2[peinan.utils]
    U1 --> O1[oil.nvim]
    U1 --> D1[diffview.nvim]
```

## 設定ファイルの読み込み順序

1. **`init.lua`** - エントリーポイント
2. **`alex/init.lua`** - メイン初期化
3. **`alex/environments/init.lua`** - 環境検出
4. **`alex/native/options.lua`** - 基本オプション設定
5. **`alex/loader/init.lua`** - プラグインローダー初期化
6. **`alex/native/init.lua`** - ネイティブ機能初期化
7. **`alex/native/lsp/init.lua`** - LSP設定
8. **`alex/keymaps/init.lua`** - キーマップ設定
9. **プラグイン設定** - 各プラグインの設定ファイル（遅延読み込み）

## 重要な依存関係の説明

### 環境モジュール

環境モジュール（`peinan.environments`）は、他のすべてのモジュールの前に実行されます。これにより、環境に応じた初期化の制御が可能になります。

### オプション設定

`peinan.native.options`は、プラグインが読み込まれる前に実行される必要があります。これにより、プラグインが正しいオプション設定を参照できます。

### プラグインローダー

`peinan.loader`は、Lazy.nvimを初期化し、すべてのプラグイン定義を読み込みます。プラグインは遅延読み込みされるため、起動時には設定のみが読み込まれます。

### キーマップ

キーマップは、プラグインが読み込まれた後に設定される場合があります（例：Telescope、no-neck-pain）。これにより、プラグイン固有の機能にアクセスできます。

