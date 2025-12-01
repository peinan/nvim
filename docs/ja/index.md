# Neovim Configuration ドキュメント

このドキュメントは、Neovim設定の包括的なガイドです。

## 概要

これは [peinan](https://github.com/peinan) が使用している Neovim の設定です。
なお、この設定は [dotfiles](https://github.com/peinan/dotfiles) のサブモジュールとして使用されています。

### 主な特徴

- **モジュラー設計**: 機能ごとに分離されたモジュール構造
- **Lazy loading**: プラグインの遅延読み込みによる高速起動
- **環境対応**: Neovide、WezTerm、VSCodeなど複数の環境に対応
- **包括的なLSPサポート**: 言語サーバープロトコルによる強力な言語サポート
- **豊富なキーマップ**: 効率的なワークフローを実現するキーバインド

## クイックスタート

### 前提条件

- Neovim 0.9以上
- Git
- Node.js（一部のプラグインで必要）

### インストール

```bash
git clone https://github.com/peinan/nvim ~/.config/nvim
```

### 初回起動

初回起動時、Neovimは自動的にプラグインをインストールします。これには数分かかる場合があります。

## ドキュメント構成

- [ディレクトリ構造](/structure/) - プロジェクトの構造と各ディレクトリの役割
- [依存関係](/structure/dependencies) - モジュール間の依存関係図
- [機能一覧](/features/) - 利用可能な全機能の説明
- [キーマップ](/keymaps/) - すべてのキーバインドの一覧
- [プラグイン](/plugins/) - 使用されているプラグインの詳細

## 設定ファイルの場所

メインの設定ファイルは以下の場所にあります：

- [`init.lua`](https://github.com/peinan/nvim/tree/main/init.lua) - エントリーポイント
- [`lua/alex/`](https://github.com/peinan/nvim/tree/main/lua/alex) - メインの設定モジュール

詳細は[ディレクトリ構造](/structure/)を参照してください。

