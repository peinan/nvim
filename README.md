# Neovim

A modular and extensible Neovim configuration with comprehensive documentation.
This repository is a submodule of my [dotfiles](https://github.com/peinan/dotfiles).

## Features

- **Modular Design**: Module structure separated by functionality
- **Lazy Loading**: Fast startup with lazy-loaded plugins
- **Environment Support**: Supports multiple environments including Neovide, WezTerm, and VSCode
- **Comprehensive LSP Support**: Powerful language support via Language Server Protocol
- **Rich Keymaps**: Key bindings for efficient workflows

## Quick Start

### Prerequisites

- Neovim 0.9 or higher
- Git
- Node.js (required for some plugins)

### Installation

```bash
git clone https://github.com/peinan/nvim ~/.config/nvim
```

On first launch, Neovim will automatically install plugins. This may take a few minutes.

## Main Configurations & Plugins

### Core Setup
- **Lazy.nvim**: Plugin manager with lazy loading
- **LSP**: Language Server Protocol support with auto-formatting and diagnostics
- **nvim-cmp**: Completion engine with LSP, buffer, and path completion
- **Tree-sitter**: Enhanced syntax highlighting and text objects

### UI/UX
- **Telescope**: Powerful fuzzy finder for files, grep, buffers, and more
- **Oil.nvim**: Modern file explorer
- **Lualine**: Customizable status line
- **Noice**: Improved command line UI
- **Dashboard**: Startup screen with recent files and projects
- **GitSigns**: Git change indicators in the sign column
- **Diffview**: Git diff viewer

### Editing & Movement
- **Leap**: Fast text movement with two-character search
- **Indent Blankline**: Visual indent guides
- **Neoscroll**: Smooth scrolling

### Language Support
- **nvim-lspconfig**: LSP client configuration
- **nvim-lint**: Linter integration
- **todo-comments**: TODO comment highlighting and search

### Others
- **Which-key**: Interactive keymap help
- **Nordic**: Color theme

For detailed documentation, please visit the [plugins page](https://peinan.github.io/nvim/plugins/).

## Documentation

For detailed documentation, features, keymaps, and complete plugin information, please visit the [GitHub Pages site](https://peinan.github.io/nvim/).

## Activities

![Alt](https://repobeats.axiom.co/api/embed/403a7ec37e16e4702c079ce6cdd4705d93fcb672.svg "Repobeats analytics image")

## Acknowledgments

This configuration is inspired by the following projects:
- [AlexvZyl/nvim](https://github.com/AlexvZyl/nvim)
- [ryoppippi/dotfiles](https://github.com/ryoppippi/dotfiles)
