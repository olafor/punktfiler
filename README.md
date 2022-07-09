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
NOTERA: Det har visat sig vara enklare att sätta upp symlänkar för hand

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
* ajorgensen/vim-markdown-toc
* folke/zen_mode.nvim

#### vimwiki
* Om jag använder Windows 11 kan jag sätta denna under: */mnt/c/Users/olafo/OneDrive/vimwiki* och sätta upp en symlänk dit

#### zenmode
https://github.com/folke/zen-mode.nvim

### Themes
* gruvbox

## Tmux
Convenient setup

## Gdb
*.gdbinit* to be properly written

## ToDo
* Clean nvim config
* Add nvim plugin descriptions
* Convert init.vim to init.lua
