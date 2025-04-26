-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
--
--
--
vim.g.mapleader = " "

vim.scriptencoding = "utf-8"
vim.opt.encoding = "utf-8"
vim.opt.fileencoding = "utf-8"

vim.opt.number = true

vim.opt.title = true
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.hlsearch = true
vim.opt.backup = false
vim.opt.showcmd = true
vim.opt.cmdheight = 0
vim.opt.laststatus = 0
vim.opt.expandtab = true
vim.opt.scrolloff = 20
vim.opt.inccommand = "split"
vim.opt.ignorecase = true
vim.opt.smarttab = true
vim.opt.breakindent = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.wrap = false
vim.opt.backspace = { "start", "eol", "indent" }
vim.opt.path:append({ "**" })
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.splitkeep = "cursor"
vim.opt.mouse = ""
vim.opt.wildignore:append({
  -- Ignore dependencies
  "*/node_modules/*", -- Node.js dependencies
  "*/.yarn/*", -- Yarn cache
  "*/.pnp/*", -- Yarn Plug'n'Play
  "*/.venv/*", -- Python virtual environment
  "*/__pycache__/*", -- Python cache files
  "*/.cargo/*", -- Rust package cache
  "*/target/*", -- Rust build artifacts
  "*/.gradle/*", -- Gradle cache
  "*/.mvn/*", -- Maven cache
  "*/.dart_tool/*", -- Dart package cache
  "*/vendor/*", -- PHP/Ruby dependencies
  "*/Pods/*", -- CocoaPods dependencies (iOS)

  -- Ignore build artifacts
  "*/build/*", -- General build directory
  "*/dist/*", -- Distribution folders
  "*/out/*", -- General output directories
  "*/bin/*", -- Compiled binaries
  "*/obj/*", -- Object files (C/C++)
  "*.o",
  "*.a",
  "*.so", -- Compiled object files
  "*.exe",
  "*.dll", -- Windows executables

  -- Ignore version control files
  "*/.git/*", -- Git repository data
  "*/.svn/*", -- Subversion data
  "*/.hg/*", -- Mercurial repository data

  -- Ignore logs & temporary files
  "*.log", -- Log files
  "*.lock", -- Lock files
  "*.tmp",
  "*.swp", -- Temporary files
  "*/tmp/*", -- Temporary directories

  -- Ignore IDE & editor-specific files
  "*/.vscode/*", -- VSCode settings
  "*/.idea/*", -- JetBrains IDE settings
  "*/.DS_Store", -- macOS Finder metadata
  "*/Thumbs.db", -- Windows Explorer cache

  -- Ignore media files
  "*.pdf", -- PDF files
  "*.png",
  "*.jpg",
  "*.jpeg",
  "*.gif",
  "*.bmp",
  "*.svg",
  "*.webp", -- Images
  "*.mp3",
  "*.wav",
  "*.flac",
  "*.ogg", -- Audio files
  "*.mp4",
  "*.mkv",
  "*.avi",
  "*.mov", -- Video files
  "*.ttf",
  "*.otf",
  "*.woff",
  "*.woff2", -- Font files

  -- Ignore compressed archives
  "*.zip",
  "*.tar",
  "*.gz",
  "*.bz2",
  "*.xz",
  "*.rar",
  "*.7z",

  -- Ignore database & binary files
  "*.sqlite",
  "*.db",
  "*.bak",
  "*.iso",
})
-- Add asterisks in block comments
vim.opt.formatoptions:append({ "r" })
