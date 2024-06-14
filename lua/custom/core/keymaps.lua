-- Set <space> as the leader key
-- See `:help mapleader`
--  NOTE: Must happen before plugins are loaded (otherwise wrong leader will be used)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Set to true if you have a Nerd Font installed and selected in the terminal
vim.g.have_nerd_font = true

local keymap = vim.keymap -- for conciseness

keymap.set('n', '<leader>nh', ':nohl<CR>', { desc = 'Clear search highlights' })

-- increment/decrement numbers
keymap.set('n', '<leader>+', '<C-a>', { desc = 'Increment number' }) -- increment
keymap.set('n', '<leader>-', '<C-x>', { desc = 'Decrement number' }) -- decrement

keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
keymap.set('v', 'K', ":m '<-2<CR>gv=gv")

keymap.set('n', '<C-d>', '<C-d>zz')
keymap.set('n', '<C-u>', '<C-u>zz')
keymap.set('n', 'n', 'nzzzv')
keymap.set('n', 'N', 'Nzzzv')

keymap.set('n', 'o', 'o<Esc>k')
keymap.set('n', 'O', 'O<Esc>j')

keymap.set('x', '<leader>p', [["_dP]])

keymap.set({ 'n', 'v' }, '<leader>y', [["+y]])
keymap.set('n', '<leader>Y', [["+Y]])

-- keymap.set({ 'n', 'v' }, '<leader>d', [["_d]])
-- See `:help vim.opt`
-- NOTE: You can change these options as you wish!
--  For more options, you can see `:help option-list`

-- Make line numbers default
-- Set highlight on search, but clear on pressing <Esc> in normal mode
keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- turn on termguicolors for tokyonight colorscheme to work
-- (have to use iterm2 or any other true color terminal)
-- Diagnostic keymaps
keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous [D]iagnostic message' })
keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next [D]iagnostic message' })
keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Show diagnostic [E]rror messages' })
keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- TIP: Disable arrow keys in normal mode
-- vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
-- vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
-- vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
-- vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- window management
keymap.set('n', '<leader>wv', '<C-w>v', { desc = 'Split window vertically' }) -- split window vertically
keymap.set('n', '<leader>wh', '<C-w>s', { desc = 'Split window horizontally' }) -- split window horizontally
keymap.set('n', '<leader>we', '<C-w>=', { desc = 'Make splits equal size' }) -- make split windows equal width & height
keymap.set('n', '<leader>wd', '<cmd>close<CR>', { desc = 'Close current split' }) -- close current split window

keymap.set('n', '<leader>tt', '<cmd>tabs<CR>', { desc = 'List all tabs' }) -- open new tab
keymap.set('n', '<leader>to', '<cmd>tabnew<CR>', { desc = 'Open new tab' }) -- open new tab
keymap.set('n', '<leader>td', '<cmd>tabclose<CR>', { desc = 'Close current tab' }) -- close current tab
keymap.set('n', '<leader>tn', '<cmd>tabn<CR>', { desc = 'Go to next tab' }) --  go to next tab
keymap.set('n', '<leader>tp', '<cmd>tabp<CR>', { desc = 'Go to previous tab' }) --  go to previous tab
keymap.set('n', '<leader>tf', '<cmd>tabnew %<CR>', { desc = 'Open current buffer in new tab' }) --  move current

keymap.set('n', '<leader>bb', '<cmd>buffers<CR>', { desc = 'List all buffers' }) -- List all buffers
keymap.set('n', '<leader>bd', '<cmd>bdelete<CR>', { desc = 'Delete current before' }) -- Delete current before
keymap.set('n', '<leader>bn', '<cmd>bnext<CR>', { desc = 'Go to next buffer' }) --  Go to next buffer
keymap.set('n', '<leader>bp', '<cmd>bprev<CR>', { desc = 'Go to previous buffer' }) --  Go to previous buffer
