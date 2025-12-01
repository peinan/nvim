# Dependencies

This page explains the dependencies between modules in the Neovim configuration.

## Module Dependency Diagram

```mermaid
graph TD
    A[init.lua] --> B[alex/init.lua]
    B --> C[alex.environments]
    B --> D[alex.native.options]
    B --> E[alex.loader]
    B --> F[alex.native]
    B --> G[alex.keymaps]

    C --> C1[neovide.lua]
    C --> C2[wezterm.lua]
    C --> C3[vscode.lua]

    E --> E1[alex.loader.bootstrap]
    E --> E2[alex.loader.plugins]

    F --> F1[alex.native.options]
    F --> F2[alex.native.terminal]
    F --> F3[alex.native.statuscolumn]
    F --> F4[alex.native.winbar]
    F --> F5[alex.native.lsp]

    F5 --> F5A[alex.native.lsp.defaults]
    F5 --> F5B[alex.native.lsp.tsn]

    G --> G1[alex.keymaps.utils]
    G --> G2[alex.utils]

    E2 --> P1[alex.plugins.*]
    P1 --> P2[alex.utils]

    style A fill:#e1f5ff
    style B fill:#fff4e1
    style E fill:#e8f5e9
    style F fill:#f3e5f5
    style G fill:#fce4ec
```

## Initialization Flow

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

    N->>I: Launch
    I->>A: require("alex")
    A->>E: Environment check
    E-->>A: should_setup
    alt should_setup == true
        A->>O: Set options
        A->>L: Initialize plugin loader
        L->>L: Setup Lazy.nvim
        A->>N2: Initialize native features
        N2->>N2: LSP setup
        A->>K: Initialize keymaps
    else should_setup == false
        A-->>I: Early return
    end
```

## Plugin Dependencies

```mermaid
graph LR
    subgraph "UI/UX"
        P1[dashboard-nvim]
        P2[lualine.nvim]
        P3[noice.nvim]
        P4[oil.nvim]
        P5[no-neck-pain.nvim]
    end

    subgraph "Editing/Movement"
        P6[leap.nvim]
        P7[telescope.nvim]
    end

    subgraph "Language Support"
        P8[nvim-treesitter]
        P9[nvim-lspconfig]
        P10[nvim-cmp]
        P11[nvim-lint]
    end

    subgraph "Dependencies"
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

## Keymap Dependencies

```mermaid
graph TD
    K[alex.keymaps.init] --> K1[native]
    K --> K2[editing]
    K --> K3[lsp]
    K --> K4[telescope]
    K --> K5[no_neck_pain]

    K1 --> U1[alex.keymaps.utils]
    K2 --> U1
    K3 --> L1[alex.native.lsp]
    K4 --> T1[telescope.builtin]
    K5 --> N1[alex.plugins.no-neck-pain]

    U1 --> U2[alex.utils]
    U1 --> O1[oil.nvim]
    U1 --> D1[diffview.nvim]
```

## Configuration File Load Order

1. **`init.lua`** - Entry point
2. **`alex/init.lua`** - Main initialization
3. **`alex/environments/init.lua`** - Environment detection
4. **`alex/native/options.lua`** - Basic option settings
5. **`alex/loader/init.lua`** - Plugin loader initialization
6. **`alex/native/init.lua`** - Native features initialization
7. **`alex/native/lsp/init.lua`** - LSP setup
8. **`alex/keymaps/init.lua`** - Keymap settings
9. **Plugin settings** - Individual plugin configuration files (lazy loaded)

## Important Dependency Explanations

### Environment Module

The environment module (`alex.environments`) runs before all other modules. This allows environment-specific initialization control.

### Option Settings

`alex.native.options` must run before plugins are loaded. This ensures plugins can reference the correct option settings.

### Plugin Loader

`alex.loader` initializes Lazy.nvim and loads all plugin definitions. Plugins are lazy-loaded, so only configurations are loaded at startup.

### Keymaps

Keymaps may be set after plugins are loaded (e.g., Telescope, no-neck-pain). This allows access to plugin-specific features.

