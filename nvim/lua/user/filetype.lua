local g = vim.g
local cmd = vim.cmd

if not g.did_load_ftdetect then
  cmd [[
    au! BufRead,BufNewFile *.k		setfiletype k
    au! BufRead,BufNewFile *.q		setfiletype q
    au! BufRead,BufNewFile *.s		setfiletype sql
  ]]
end
