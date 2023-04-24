local opt = vim.opt

-- 行号
opt.number = true

-- 缩进
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.autoindent = true

-- 防止包裹
opt.wrap = false

-- 光标行
opt.cursorline = true

-- 启用鼠标
opt.mouse:append("a")

-- 系统剪切板
opt.clipboard:append("unnamedplus")

-- 默认新窗口右和下
opt.splitright = true
opt.splitbelow = true

-- 搜素
opt.ignorecase = true -- 不区分大小写
opt.smartcase = true  

-- 外观
opt.termguicolors = true -- 终端真颜色
opt.signcolumn = "yes"
vim.cmd[[colorscheme tokyonight-moon]] --主题
