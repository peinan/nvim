-- spell は無効化する。spelllang=en だと辞書に無い日本語が全て SpellBad 判定になり、
-- SpellBad の undercurl が undercurl 非対応の端末で下線にフォールバックして表示されるため。
vim.cmd([[
    setlocal wrap
    setlocal nospell
]])
