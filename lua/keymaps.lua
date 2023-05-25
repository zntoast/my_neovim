vim.g.mapleader = ","

local keymap = vim.keymap

---------------------- 插入模式 -------------------
---------------------- 视觉模式 -------------------
keymap.set("v","K",":m '<-2<CR>gv=gv")
keymap.set("v","J",":m '>+1<CR>gv=gv")
keymap.set("v","H","g^")
keymap.set("v","L","g_")
---------------------- 正常模式 -------------------
-- 移动
keymap.set("n","H","g^")
keymap.set("n","L","g_")
-- 窗口
keymap.set("n","<space>vs",":vs<CR>")
keymap.set("n","<space>sv",":sv<CR>")
keymap.set("n","L","g_")
-- 退出保存
keymap.set("n","Q",":q<CR>")
keymap.set("n","S",":w<CR>")
-- 取消高亮
keymap.set("n","<leader>nh",":nohl<CR>")

-- ---------- 插件 ---------- ---
-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")
-- Aarkdown open-stop 
keymap.set("n", "<C-p>", ":MarkdownPreviewToggle<CR>")
-- 切换buffer
keymap.set("n", "<A-l>", ":bnext<CR>")
keymap.set("n", "<A-h>", ":bprevious<CR>")
-- 文件查找
keymap.set("n", "<leader>f", ":Files<CR>")
keymap.set("n", "<leader>b", ":Buffers<CR>")
keymap.set("n", "<leader><tab>", ":Maps<CR>")
keymap.set("n", "<leader>1", ":BufferLineGoToBuffer 1<CR>")
keymap.set("n", "<leader>2", ":BufferLineGoToBuffer 2<CR>")
keymap.set("n", "<leader>3", ":BufferLineGoToBuffer 3<CR>")
keymap.set("n", "<leader>4", ":BufferLineGoToBuffer 4<CR>")
keymap.set("n", "<leader>5", ":BufferLineGoToBuffer 5<CR>")
keymap.set("n", "<leader>6", ":BufferLineGoToBuffer 6<CR>")
keymap.set("n", "<leader>7", ":BufferLineGoToBuffer 7<CR>")
-- 代码调试
local dap = require "dap"
keymap.set("n", "<F5>", dap.continue)
keymap.set("n", "<F10>", dap.step_over)
keymap.set("n", "<F11>", dap.step_into)
keymap.set("n", "<F12>", dap.step_out)
keymap.set("n", "<leader>db", dap.toggle_breakpoint)
keymap.set("n", "<leader>ds", dap.terminate)
