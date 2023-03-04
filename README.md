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
* akinsho/org-bullets.nvim
* folke/tokyonight.nvim
* folke/zen-mode.nvim
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
* vim-airline/vim-airline
* vim-airline/vim-airline-themes

### Themes
* tokyonight
* gruvbox

## Tmux
Convenient setup

## Gdb
*.gdbinit* to be properly written

## I3
Grundläggande inställningar
* alacritty satt som terminal

## etc...
### fzf
https://github.com/junegunn/fzf

Lägg till följande harang till .bashrc:
```bash
[ -f ~/.fzf.bash ] && . ~/.fzf.bash
```
