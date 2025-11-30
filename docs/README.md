# Neovim Configuration Documentation

This directory contains comprehensive documentation for the Neovim configuration.

## Languages

The documentation is available in multiple languages:

- **English** (default) - `/`
- **日本語** (Japanese) - `/ja/`

You can switch languages using the language menu in the navigation bar.

## Setup

### Prerequisites

- Node.js 18 or higher
- npm or yarn

### Installation

```bash
cd docs
npm install
```

### Starting the Development Server

```bash
npm run dev
```

Open `http://localhost:5173` in your browser to view the documentation.

### Build

```bash
npm run build
```

The built files will be output to `.vitepress/dist`.

### Preview

```bash
npm run preview
```

Preview the built documentation.

## Documentation Structure

- `index.md` - Homepage (English, default)
- `ja/index.md` - Homepage (Japanese)
- `structure/` - Directory structure and dependencies
- `features/` - Features list
- `keymaps/` - Keymaps list
- `plugins/` - Plugin details

## Tech Stack

- [VitePress](https://vitepress.dev/) - Static site generator
- [Mermaid](https://mermaid.js.org/) - Diagram generation
- [vitepress-plugin-mermaid](https://github.com/emersonbottero/vitepress-plugin-mermaid) - Mermaid plugin for VitePress

## Testing GitHub Actions Locally

This documentation uses GitHub Actions for CI/CD. You can test workflows locally using [act](https://github.com/nektos/act).

### Prerequisites

Install `act`:

```bash
# macOS (using Homebrew)
brew install act

# Or using the installation script
curl https://raw.githubusercontent.com/nektos/act/master/install.sh | sudo bash
```

### Running Workflows

#### Test VitePress Deploy Workflow

```bash
# Run the VitePress deploy workflow
act push -W .github/workflows/vitepress-deploy.yml

# Run with specific event
act workflow_dispatch -W .github/workflows/vitepress-deploy.yml
```

#### Test StyLua Workflow

```bash
# Run the StyLua formatting workflow
act push -W .github/workflows/stylua.yml
```

### Common Options

- `-l, --list`: List all workflows
- `-W, --workflows`: Path to workflow file(s)
- `-j, --job`: Run a specific job
- `-e, --eventpath`: Path to event JSON file
- `--secret`: Pass secrets to workflows (e.g., `--secret GITHUB_TOKEN=your_token`)
- `--env`: Set environment variables
- `-P, --platform`: Set platform (e.g., `-P ubuntu-latest=catthehacker/ubuntu:act-latest`)

### Example: Testing with Secrets

```bash
act push -W .github/workflows/vitepress-deploy.yml \
  --secret GITHUB_TOKEN=your_github_token
```

### Note

Some actions may not work perfectly with `act` due to platform differences. For GitHub Pages deployment, you may need to skip the deploy job or use `-j build` to test only the build job:

```bash
act push -W .github/workflows/vitepress-deploy.yml -j build
```

