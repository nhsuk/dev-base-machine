#!/usr/bin/env bash

# Get cask https://caskroom.github.io/
brew tap caskroom/cask

# Browsers
casks=(google-chrome firefox)

# Utils
casks+=(
iterm2
google-drive
vmware-horizon-client
)

# Editors
casks+=(atom sublime-text)

# IM
casks+=(slack skype)

# The update does all pkgs so just do it once
echo "Updating..."
brew update

# Upgrade if already home brew installed else install
for pkg in "${casks[@]}"; do
  update_pkg="$(brew cask list -1 | grep ${pkg})"
  if [[ ! "$update_pkg" ]]; then
    echo "Installing '$pkg'..."
    brew cask install "$pkg"
  else
    echo "'$update_pkg' already installed"
  fi
done

# Cleaup
brew cask cleanup
