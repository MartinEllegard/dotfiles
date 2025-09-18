-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- ### Obsidian keybinds ###

-- go to vault
vim.keymap.set("n", "<leader>oo", ":cd /Users/martin/Library/Mobile\\ Documents/iCloud~md~obsidian/Documents/notes<cr>")
--
-- convert note to template and remove leading white space
vim.keymap.set("n", "<leader>on", ":ObsidianTemplate note<cr> :lua vim.cmd([[1,/^\\S/s/^\\n\\{1,}//]])<cr>")
-- strip date from note title and replace dashes with spaces
-- must have cursor on title
vim.keymap.set("n", "<leader>of", ":s/\\(# \\)[^_]*_/\\1/ | s/-/ /g<cr>")
--
-- search for files in full vault
vim.keymap.set(
  "n",
  "<leader>os",
  ':Telescope find_files search_dirs={"/Users/martin/Library/Mobile\\ Documents/iCloud~md~obsidian/Documents/notes"}<cr>'
)
vim.keymap.set(
  "n",
  "<leader>oz",
  ':Telescope live_grep search_dirs={"/Users/martin/Library/Mobile\\ Documents/iCloud~md~obsidian/Documents/notes"}<cr>'
)
--
-- for review workflow
-- move file in current buffer to zettelkasten folder
vim.keymap.set(
  "n",
  "<leader>ok",
  ":!mv '%:p' /Users/martin/Library/Mobile\\ Documents/iCloud~md~obsidian/Documents/notes/01\\ -\\ Zettelkasten<cr>:bd<cr>"
)
-- delete file in current buffer
vim.keymap.set("n", "<leader>odd", ":!rm '%:p'<cr>:bd<cr>")

-- ### Obsidian end ###
