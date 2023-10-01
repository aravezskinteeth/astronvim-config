<h1 align="center">AstroNvim User Configuration</h1>

<div align="center">
<img src="https://img.shields.io/github/last-commit/aravezskinteeth/astronvim-config?style=for-the-badge&logo=github&color=F5C2E7&logoColor=CDD6F4&labelColor=313244"/>
<img src="https://img.shields.io/github/repo-size/aravezskinteeth/astronvim-config?style=for-the-badge&logo=github&color=CBA6F7&logoColor=CDD6F4&labelColor=313244"/>
<img src="https://img.shields.io/github/languages/top/aravezskinteeth/astronvim-config?style=for-the-badge&logo=lua&color=94E2D5&logoColor=CDD6F4&labelColor=313244"/>
</div>

## 🌟 Screenshots

<img width="1644" alt="SCR-20230602-rhba" src="https://github.com/aravezskinteeth/astronvim-config/assets/104392087/0789449b-ae36-4952-ae4d-86a03f3f7158">

<img width="1644" alt="SCR-20230602-rhfs" src="https://github.com/aravezskinteeth/astronvim-config/assets/104392087/8da8d016-e235-4996-81be-5aa3cdf1de87">

<img width="1644" alt="SCR-20230602-rihp" src="https://github.com/aravezskinteeth/astronvim-config/assets/104392087/21bde80e-2e05-484f-8b49-dc47da4f14ac">

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
🪄- Syntax highlighting with [Treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- Formatting and linting with [Null-ls](https://github.com/jose-elias-alvarez/null-ls.nvim)
- Language Server Protocol with [Native LSP](https://github.com/neovim/nvim-lspconfig)

➡️  [Click here](https://astronvim.com/acknowledgements) For a full list of plugins used by *AstroNvim*.

➡️  [Click here](https://astronvim.com/Basic%20Usage/mappings) For a full list of default mappings used by *AstroNvim*.

### Custom

🔬 Tailored for Academics! <br>
🎨 Color Scheme with [Catppuccin 😸](https://github.com/catppuccin/nvim)

| Plugin | Feature |
| ------ | ------- |
| [Todo Comments](https://github.com/folke/todo-comments.nvim)| ✅ Highlight, list and search todo comments in your projects|
| [VimTex](https://github.com/lervag/vimtex)| Preview LaTeX files with your favorite PDF editor!|
| [Glow](https://github.com/ellisonleao/glow.nvim)| Preview markdown files with pizzaz 🪄|
| [Markdown Preview](https://github.com/iamcco/markdown-preview.nvim) | Live preview Markdown files on your browser 🌐|
| [Quarto](https://github.com/quarto-dev/quarto-nvim)| Open-source scientific and technical publishing system built on Pandoc |

## 🛠️ Installation

### Prequisites

#### For AstroNvim

- [Nerd Fonts](https://www.nerdfonts.com/font-downloads). Note that if you're using kitty terminal is better to install an unpatched font. Then download **Symbols Nerd Font - Regular**.

- [Neovim v.0.9+](https://github.com/neovim/neovim/releases/tag/stable). It's better to use a stable version and not *nightly*, Unless necessary, see issue [#2311](https://github.com/AstroNvim/AstroNvim/issues/2311#issuecomment-1742121088).

- [Tree-sitter CLI](https://github.com/tree-sitter/tree-sitter/blob/master/cli/README.md) (📝 *Note*: This is only necessary if you want to use `auto_install` feature with Treesitter).

- A clipboard tool is necessary for the integration with the system clipboard (*see* `:help clipboard-tool` for supported solutions).

- Terminal with true color support (for the default theme, otherwise it is dependent on the theme you are using).

##### Optional Requirements:

- [ripgrep](https://github.com/BurntSushi/ripgrep) - live grep telescope search (`<leader>fw`)
- [lazygit](https://github.com/jesseduffield/lazygit) - git ui toggle terminal (`<leader>tl` or `<leader>gg`)
- [go DiskUsage()](https://github.com/dundee/gdu) - disk usage toggle terminal (`<leader>tu`)
- [bottom](https://github.com/ClementTsang/bottom) - process viewer toggle terminal (`<leader>tt`)
- [Python](https://docs.brew.sh/Homebrew-and-Python) - python repl toggle terminal (`<leader>tp`)
- [Node](https://formulae.brew.sh/formula/node) - Node is needed for a lot of the LSPs, and for the node repl toggle terminal (`<leader>tn`)

#### For this config

1. Download `glow` with you favorite packer manager.
    ```shell
    brew install glow
    ```
2. [Install Latex and Skim](https://github.com/aravezskinteeth/astronvim-config/wiki/Latex-Support).

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

#### Clone this repo

```shell
git clone https://github.com/aravezskinteeth/astronvim-config ~/.config/nvim/lua/user && nvim
```
