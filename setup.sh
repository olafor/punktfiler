#!/usr/bin/bash
#!/usr/bin/env bash

# Setup script for my dotfiles
# Mostly taken from Jonas Ekstrand (joekst)

# Install necessary packages

if  [[ ! "${whoami}" = *"root"* ]]; then
   apt-get install -y stow neovim exuberant-ctags
fi

# List of 'apps' to install using stow.

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
echo "In case this did not quite work, use \"stow -n <app>\","
echo "followed by \"stow <app\""
echo ""
echo "Done!"
