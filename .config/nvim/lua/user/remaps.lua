local remap = require("user.keymap")
local nnoremap = remap.nnoremap
local vnoremap = remap.vnoremap
local inoremap = remap.inoremap
local xnoremap = remap.xnoremap
local nmap = remap.nmap



-- basic remaps
nnoremap("x", '"_x')
nnoremap("<leader>dd", '"dd')
vnoremap("x", '"_x')
vnoremap("<leader>dd", '"dd')

-- Colemak basic remap --
nnoremap('n', 'h')
vnoremap('n', 'h')
nnoremap('N', 'H')
vnoremap('N', 'H')
nnoremap('e', 'j')
vnoremap('e', 'j')
nnoremap('i', 'k')
vnoremap('i', 'k')
nnoremap('I', 'k')
vnoremap('I', 'k')
nnoremap('o', 'l')
vnoremap('o', 'l')
nnoremap('O', 'L')
vnoremap('O', 'L')
nnoremap('t', 'a')
vnoremap('t', 'a')
nnoremap('T', 'A')
vnoremap('T', 'A')
nnoremap('a', 'i')
nnoremap('a', 'i')
nnoremap('A', 'I')
vnoremap('A', 'I')
nnoremap('q', 'b')
vnoremap('q', 'b')
nnoremap('Q', 'B')
vnoremap('Q', 'B')
nnoremap('b', 'q')
vnoremap('b', 'q')
nnoremap('B', 'Q')
vnoremap('B', 'Q')
nnoremap('l', 'o')
vnoremap('l', 'o')
nnoremap('L', 'O')
vnoremap('L', 'O')
nnoremap('h', 'n')
vnoremap('h', 'n')
nnoremap('H', 'N')
vnoremap('H', 'N')
nnoremap('k', 'e')
vnoremap('k', 'e')
-- nnoremap('K', 'E')
-- vnoremap('K', 'E')
-- ea for /search up

-- Reconfig --
nnoremap('<C-d>', '<C-d>zz')
nnoremap('<C-u>', '<C-u>zz')

-- Nvim-tree --
nnoremap('<leader>nt', '<Cmd>NvimTreeToggle<CR>')
nnoremap('<leader>nn', '<Cmd>NvimTreeFocus<CR>')
nnoremap('<leader>tt', '<Cmd>ToggleTerm<CR>')

-- Telescope --
nnoremap('<leader>tf', '<Cmd>Telescope find_files<CR>')
nnoremap('<leader>to', '<Cmd>Telescope oldfiles<CR>')

-- Open firefox --
nnoremap('<leader>ft', '<Cmd>silent !firefox %<CR>')

-- window navigation --
nnoremap('<C-w>e', '<C-w>j')
nnoremap('<C-w>i', '<C-w>k')
nnoremap('<C-w>o', '<C-w>l')
nnoremap('<C-w>n', '<C-w>h')

-- Custom maps --
nnoremap('<silent> gx', ':!open <cWORD><cr>')
-- nnoremap("<leader>c", "<Cmd>lua close_float()<CR>")

-- formatting
nnoremap("<leader>fb", "<CMD>:lua vim.lsp.buf.format()<CR>")

-- Debugui
nnoremap('<leader>du', '<CMD>:lua require("dapui").toggle()<CR>')
nnoremap('<leader>df', '<CMD>DapToggleBreakpoint<CR>')

-- Harpoon 
nnoremap('<leader>ht', '<CMD>:lua require("harpoon.ui").toggle_quick_menu()<CR>')
nnoremap('<leader>ha', '<CMD>:lua require("harpoon.ui").add_file()<CR>')
nnoremap('<leader>ho', '<CMD>:lua require("harpoon.ui").nav_next()<CR>')
nnoremap('<leader>hn', '<CMD>:lua require("harpoon.ui").nav_prev()<CR>')
