# PunktFiler
A repository for setting up my dotfiles

Sätt upp symlänkar till önskvärda kataloger/filer, t.ex:
```bash
cd /home/$USER/.config
ln -s ~/.punktfile/nvim
```

## Bash
* Sätt lokala inställningar och funktioner i *~/.bash_aliases*
* Använd *. ~/.bashrc* istället för *source ~/.bashrc* av säkerhetsskäl

## NeoVim
* Install the Packer plugin manager:
```bash
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```
* Then, in neovim, use the :Packer* commands

### Skriva
* Använd *:setlocal spell spelllang=sv* för att hitta felstavade ord på svenska

### Plugins
* airblade/vim-gitgutter
* ajorgensen/vim-markdown-toc
* aklt/plantuml-syntax
* folke/tokyonight.nvim
* folke/which-key.nvim
* folke/zen-mode.nvim
* ggandor/leap.nvim
* jiangmiao/auto-pairs
* jubnzv/mdeval.nvim
* morhetz/gruvbox
* nvim-lua/plenary.nvim
* nvim-orgmode/orgmode
* nvim-telescope/telescope.nvim
* nvim-treesitter/nvim-treesitter
* preservim/tagbar
* rust-lang/rust.vim
* scrooloose/NERDTree
* sheerun/vim-polyglot
* sindrets/diffview.nvim
* tpope/vim-fugitive
* tpope/vim-surround

### Themes
* tokyonight
* gruvbox

## Tmux

## Git
Använd delta som pager:
https://github.com/dandavison/delta

## Cetera
### fzf
https://github.com/junegunn/fzf

Lägg till följande harang till .bashrc:
```bash
[ -f ~/.fzf.bash ] && . ~/.fzf.bash
```
