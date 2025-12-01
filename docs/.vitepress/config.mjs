import { defineConfig } from 'vitepress'
import { withMermaid } from 'vitepress-plugin-mermaid'

export default withMermaid(defineConfig({
  title: 'Neovim Configuration',
  description: 'Comprehensive documentation for Neovim configuration',

  cleanUrls: true,

  rewrites: {
    'en/:rest*': ':rest*'
  },

  locales: {
    root: {
      label: 'English',
      lang: 'en',
      link: '/',
      title: 'Neovim Configuration',
      description: 'Comprehensive documentation for Neovim configuration',
      themeConfig: {
        nav: [
          { text: 'Home', link: '/' },
          { text: 'Structure', link: '/structure/' },
          { text: 'Features', link: '/features/' },
          { text: 'Keymaps', link: '/keymaps/' },
          { text: 'Plugins', link: '/plugins/' }
        ],
        sidebar: {
          '/': [
            {
              text: 'Getting Started',
              items: [
                { text: 'Overview', link: '/' },
                { text: 'Directory Structure', link: '/structure/' },
                { text: 'Dependencies', link: '/structure/dependencies' }
              ]
            },
            {
              text: 'Features',
              items: [
                { text: 'Features List', link: '/features/' },
                { text: 'Keymaps List', link: '/keymaps/' }
              ]
            },
            {
              text: 'Plugins',
              items: [
                { text: 'Plugins List', link: '/plugins/' },
                { text: 'UI/UX', link: '/plugins/ui-ux' },
                { text: 'Editing/Movement', link: '/plugins/editing' },
                { text: 'Language Support', link: '/plugins/language' },
                { text: 'Others', link: '/plugins/others' }
              ]
            }
          ]
        },
        socialLinks: [
          { icon: 'github', link: 'https://github.com/peinan/nvim' }
        ],
        footer: {
          message: 'Neovim Configuration Documentation',
          copyright: 'Copyright © 2024'
        },
        langMenuLabel: 'Change language'
      }
    },
    ja: {
      label: '日本語',
      lang: 'ja',
      link: '/ja/',
      title: 'Neovim Configuration',
      description: 'Neovim設定の包括的なドキュメント',
      themeConfig: {
        nav: [
          { text: 'ホーム', link: '/ja/' },
          { text: '構造', link: '/ja/structure/' },
          { text: '機能', link: '/ja/features/' },
          { text: 'キーマップ', link: '/ja/keymaps/' },
          { text: 'プラグイン', link: '/ja/plugins/' }
        ],
        sidebar: {
          '/ja/': [
            {
              text: 'はじめに',
              items: [
                { text: '概要', link: '/ja/' },
                { text: 'ディレクトリ構造', link: '/ja/structure/' },
                { text: '依存関係', link: '/ja/structure/dependencies' }
              ]
            },
            {
              text: '機能',
              items: [
                { text: '機能一覧', link: '/ja/features/' },
                { text: 'キーマップ一覧', link: '/ja/keymaps/' }
              ]
            },
            {
              text: 'プラグイン',
              items: [
                { text: 'プラグイン一覧', link: '/ja/plugins/' },
                { text: 'UI/UX', link: '/ja/plugins/ui-ux' },
                { text: '編集・移動', link: '/ja/plugins/editing' },
                { text: '言語サポート', link: '/ja/plugins/language' },
                { text: 'その他', link: '/ja/plugins/others' }
              ]
            }
          ]
        },
        socialLinks: [
          { icon: 'github', link: 'https://github.com/peinan/nvim' }
        ],
        footer: {
          message: 'Neovim Configuration Documentation',
          copyright: 'Copyright © 2024'
        },
        langMenuLabel: '言語を変更'
      }
    }
  },

  themeConfig: {
    langMenuLabel: 'Change language'
  }
}))

