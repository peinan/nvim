# 編集・移動プラグイン

このページでは、テキスト編集と移動に関連するプラグインを説明します。

## leap.nvim <a href="https://github.com/ggandor/leap.nvim" target="_blank" rel="noopener noreferrer"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" style="display: inline-block; vertical-align: middle; margin-left: 4px;"><path d="M18 13v6a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V8a2 2 0 0 1 2-2h6"></path><polyline points="15 3 21 3 21 9"></polyline><line x1="10" y1="14" x2="21" y2="3"></line></svg></a>

高速なテキスト移動を提供します。

**設定ファイル**: [`lua/alex/plugins/leap.lua`](https://github.com/peinan/nvim/tree/main/lua/alex/plugins/leap.lua)

**依存関係**:
- vim-repeat

**主な機能**:
- 2文字入力による高速ジャンプ
- 前方・後方ジャンプ
- ビジュアルモード対応

**キーマップ**:
- `s` - 前方ジャンプ
- `S` - 後方ジャンプ

**設定内容**:
```lua
require("leap")
require("alex.keymaps.init").leap()
```

**使用方法**:
1. `s` または `S` を押す
2. ジャンプしたい位置の2文字を入力
3. 該当する位置にジャンプ

このプラグインは、従来の `/` 検索よりも高速にテキスト間を移動できます。

