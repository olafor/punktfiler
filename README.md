# PunktFiler
A repository for setting up my dotfiles

To install with stow, use 
```bash
sudo ./setup.sh
```

In some cases you might need to
* Rename the existing file
* use the following commands
```bash 
stow -n bash
stow bash
```
## Bash

## NeoVim
* Install a plugin manager
```bash
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```

* Then, in neovim, use *:PlugInstall*

### Plugins
* vim-fugitive
* vim-gitgutter
* tpope/vim-fugitive
* airblade/vim-gitgutter
* scrooloose/NERDTree
* nvim-lua/plenary.nvim
* nvim-telescope/telescope.nvim
* tpope/vim-surround
* vimwiki/vimwiki
* sheerun/vim-polyglot
* jiangmiao/auto-pairs
* morhetz/gruvbox
* sindrets/diffview.nvim

### Themes
* gruvbox

## Tmux
Convenient setup

## ToDo
* Clean nvim config
* Add nvim plugin descriptions
