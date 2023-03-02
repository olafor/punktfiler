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
* Install a plugin manager, for example:
```bash
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```

* Then, in neovim, use *:PlugInstall*

### Skriva
* Använd *:setlocal spell spelllang=sv* för att hitta felstavade ord på svenska

### Plugins
* tpope/vim-fugitive
* airblade/vim-gitgutter
* scrooloose/NERDTree
* nvim-lua/plenary.nvim
* nvim-telescope/telescope.nvim
* tpope/vim-surround
* sheerun/vim-polyglot
* jiangmiao/auto-pairs
* morhetz/gruvbox
* sindrets/diffview.nvim
* ajorgensen/vim-markdown-toc
* folke/zen-mode.nvim
* vim-airline/vim-airline
* vim-airline/vim-airline-themes
* rust-lang/rust.vim
* preservim/tagbar
* nvim-treesitter/nvim-treesitter
* nvim-orgmode/orgmode

### Themes
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
