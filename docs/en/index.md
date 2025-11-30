# Neovim Configuration Documentation

This is a comprehensive guide to the Neovim configuration.

## Overview

This Neovim configuration is a fork of [AlexvZyl/nvim](https://github.com/AlexvZyl/nvim) with a modular and extensible structure.

### Key Features

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

### First Launch

On first launch, Neovim will automatically install plugins. This may take a few minutes.

## Documentation Structure

- [Directory Structure](/structure/) - Project structure and role of each directory
- [Dependencies](/structure/dependencies) - Dependency diagrams between modules
- [Features](/features/) - Description of all available features
- [Keymaps](/keymaps/) - List of all key bindings
- [Plugins](/plugins/) - Details of used plugins

## Configuration File Locations

Main configuration files are located at:

- [`init.lua`](https://github.com/peinan/nvim/tree/main/init.lua) - Entry point
- [`lua/alex/`](https://github.com/peinan/nvim/tree/main/lua/alex) - Main configuration module

For details, see [Directory Structure](/structure/).

