<h1 align="center">AstroNvim User Configuration</h1>

<div align="center">
<img src="https://img.shields.io/github/last-commit/aravezskinteeth/astronvim-config?style=for-the-badge&logo=github&color=F5C2E7&logoColor=CDD6F4&labelColor=313244"/>
<img src="https://img.shields.io/github/repo-size/aravezskinteeth/astronvim-config?style=for-the-badge&logo=github&color=CBA6F7&logoColor=CDD6F4&labelColor=313244"/>
<img src="https://img.shields.io/github/languages/top/aravezskinteeth/astronvim-config?style=for-the-badge&logo=lua&color=94E2D5&logoColor=CDD6F4&labelColor=313244"/>
</div>

## 🌟 Screenshots

## ✨ Features

### Core

- Statusline, Winbar, and Tabline with [Heirline](https://github.com/rebelot/heirline.nvim)
- Plugin management with [lazy.nvim](https://github.com/folke/lazy.nvim)
- Package management with [mason.nvim](https://github.com/williamboman/mason.nvim)
- File explorer with [Neo-tree](https://github.com/nvim-neo-tree/neo-tree.nvim)
- Autocompletion with [Cmp](https://github.com/hrsh7th/nvim-cmp)
- Git integration with [Gitsigns](https://github.com/lewis6991/gitsigns.nvim)
- Terminal with [Toggleterm](https://github.com/akinsho/toggleterm.nvim)
- Fuzzy finding with [Telescope](https://github.com/nvim-telescope/telescope.nvim)
- Syntax highlighting with [Treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- Formatting and linting with [Null-ls](https://github.com/jose-elias-alvarez/null-ls.nvim)
- Language Server Protocol with [Native LSP](https://github.com/neovim/nvim-lspconfig)

### Custom

## 🛠️ Installation

### Install AstroNvim

#### Make a backup of your current nvim and shared folder

```shell
mv ~/.config/nvim ~/.config/nvim.bak
mv ~/.local/share/nvim ~/.local/share/nvim.bak
mv ~/.local/state/nvim ~/.local/state/nvim.bak
rm -rf  ~/.cache/nvim
```

#### Clone AstroNvim

```shell
git clone https://github.com/AstroNvim/AstroNvim ~/.config/nvim
```

### Clone this repo

```shell
git clone https://github.com/aravezskinteeth/astronvim-config ~/.config/nvim/lua/user && nvim
```
