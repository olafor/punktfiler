# PunktFiler
A repository for setting up my dotfiles

To install with stow, use 
```bash
sudo ./setup.sh
```

## Bash
For .bashrc (and likely also for .gitconfig) you likely need to
* Rename the existing file
* use the following commands:
```bash 
stow -n bash
stow bash
```

## NeoVim
Install plugin manager
```bash
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'}
```

### Plugins
* vim-fugitive
* vim-gitgutter

### Themes
* gruvbox

## ToDo


