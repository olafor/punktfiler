#!/usr/bin/bash
#!/usr/bin/env bash

# Setup script for my dotfiles
# Mostly taken from Jonas Ekstrand (joekst)

# List of 'apps' to install using stow.

if  [[ ! "${whoami}" = *"root"* ]]; then
   apt-get install -y stow neovim exuberant-ctags
fi

base=(
  git
  bash
  nvim
)


# Command to install
stowit() {
  usr=$1
  app=$2
  stow -v -R -t ${usr} ${app}
}


echo ""
echo "Stowing apps for user ${whoami}"

for app in ${base[@]};do
  if [[ ! "${whoami}" = *"root"* ]]; then
    stowit "${HOME}" $app
  fi
done

echo ""
echo "Done!"
