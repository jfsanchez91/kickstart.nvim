vim.keymap.set({ 'i', 'n', 'v' }, '<C-s>', '<Esc>:w<CR>', { desc = 'Save current buffer' })
vim.keymap.set('n', '<C-q>', ':q<CR>', { desc = 'Close current buffer' })

vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>', { desc = 'Remove search highlights' })
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- TIP: Disable arrow keys in normal mode
-- vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
-- vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
-- vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
-- vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous [D]iagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next [D]iagnostic message' })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Show diagnostic [E]rror messages' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- Stay in indent mode
vim.keymap.set('v', '<', '<gv', { desc = 'Indent left in visual mode and stay in visual mode' })
vim.keymap.set('v', '>', '>gv', { desc = 'Indent right in visual mode and stay in visual mode' })

-- Easily split windows
vim.keymap.set('n', '<leader>wv', ':vsplit<CR>', { desc = 'Split [W]indow [V]ertically' })
vim.keymap.set('n', '<leader>wh', ':split<CR>', { desc = 'Split [W]indow [H]orizontally' })

-- Move line/block up/down
vim.keymap.set('v', '<C-k>', ":m '<-2<CR>gv=gv", { desc = 'Move selected line/block up' })
vim.keymap.set('v', '<C-j>', ":m '>+1<CR>gv=gv", { desc = 'Move selected line/block down' })
vim.keymap.set('n', '<C-k>', ':m .-2<CR>==', { desc = 'Move current line up' })
vim.keymap.set('n', '<C-j>', ':m .+1<CR>==', { desc = 'Move current line down' })

-- Duplicate line/block
vim.keymap.set('v', '<C-d>', "y'>pgv", { desc = 'Duplicate selected block' })
vim.keymap.set('n', '<C-d>', ':t.<CR>', { desc = 'Duplicate current line' })
