-- Устанавливаем Leader клавишу (Пробел)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Helper function для сокращения записи
local keymap = vim.keymap.set

-- 1. ЭРГОНОМИКА
-- Выход из режима вставки через jk
keymap("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })
keymap("i", "jj", "<ESC>", { desc = "Exit insert mode with jj" })

-- 2. НАВИГАЦИЯ ПО ОКНАМ
-- Перемещение между окнами (Ctrl + h/j/k/l)
keymap("n", "<C-h>", "<C-w>h", { desc = "Go to left window" })
keymap("n", "<C-j>", "<C-w>j", { desc = "Go to lower window" })
keymap("n", "<C-k>", "<C-w>k", { desc = "Go to upper window" })
keymap("n", "<C-l>", "<C-w>l", { desc = "Go to right window" })

-- Изменение размера окон через Alt + h/j/k/l
keymap("n", "<A-h>", "<C-w><", { desc = "Resize window smaller (width)" })
keymap("n", "<A-l>", "<C-w>>", { desc = "Resize window larger (width)" })
keymap("n", "<A-j>", "<C-w>-", { desc = "Resize window smaller (height)" })
keymap("n", "<A-k>", "<C-w>+", { desc = "Resize window larger (height)" })

-- 3. БУФФЕРА
-- Вернуть фокус из NeoTree в редактор (предыдущее окно)
keymap("n", "<leader><Tab>", "<C-w>p", { desc = "Focus Last Buffer" })

-- 4. ФАЙЛЫ И СОХРАНЕНИЕ
-- Сохранить файл
keymap("n", "<leader>w", "<cmd>w<cr>", { desc = "Save file" })
-- Сохранить и выйти
keymap("n", "<leader>x", "<cmd>x<cr>", { desc = "Save and quit" })
-- Выйти
keymap("n", "<leader>q", "<cmd>q<cr>", { desc = "Quit" })
-- Открыть проводник 
keymap("n", "<leader>e", "<cmd>Neotree toggle<cr>", { desc = "Toggle Explorer" })

-- 5. ПОИСК (Telescope)
-- Эти команды заработают только после установки Telescope
keymap("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Find files" })
keymap("n", "<leader>fg", "<cmd>Telescope live_grep<cr>", { desc = "Live grep" })
keymap("n", "<leader>fb", "<cmd>Telescope buffers<cr>", { desc = "Find buffers" })
keymap("n", "<leader>fh", "<cmd>Telescope help_tags<cr>", { desc = "Help pages" })

-- 6. LSP (IDE функции)
-- Эти команды заработают после настройки LSP
keymap("n", "gd", "<cmd>lua vim.lsp.buf.definition()<cr>", { desc = "Go to definition" })
keymap("n", "gr", "<cmd>lua vim.lsp.buf.references()<cr>", { desc = "Go to references" })
keymap("n", "K", "<cmd>lua vim.lsp.buf.hover()<cr>", { desc = "Hover documentation" })
keymap("n", "<leader>rn", "<cmd>lua vim.lsp.buf.rename()<cr>", { desc = "Rename symbol" })
keymap("n", "<leader>ca", "<cmd>lua vim.lsp.buf.code_action()<cr>", { desc = "Code action" })

-- 7. УЛУЧШЕНИЯ ПОИСКА
-- Очистить подсветку поиска (чтобы не мешала после поиска)
keymap("n", "<leader><space>", "<cmd>nohlsearch<cr>", { desc = "Clear search highlight" })

-- 8. ПЕРЕМЕЩЕНИЕ СТРОК (Визуальный режим)
-- Перемещать выделенные строки вверх/вниз (Alt + j/k)
keymap("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move line up" })
keymap("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move line down" })

-- U теперь делает Redo (повтор действия)
keymap("n", "U", "<C-r>", { desc = "Redo" })

keymap("n", "<leader>t", function() Snacks.terminal.toggle() end, { desc = "Toggle Terminal" })
