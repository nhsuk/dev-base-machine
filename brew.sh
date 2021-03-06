#!/usr/bin/env bash

which -s brew
if [[ $? != 0 ]] ; then
  # Install Homebrew
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
  brew update
fi

# Sort out permissions
sudo chown -R $(whoami):admin /usr/local

# Utils
brews=(
bash-completion
git
heroku
hub
rancher-cli
)

# Languages
brews+=(python node)

# Node utils
brews+=(yarn)

# DBs
brews+=(mongodb)

# Upgrade if already home brew installed else install
for pkg in "${brews[@]}"; do
  if brew list -1 | grep -q "^${pkg}\$"; then
    echo "Upgrading '$pkg'"
    brew upgrade "{$pkg}"
  else
    echo "Installing '$pkg'"
    brew install "{$pkg}"
  fi
done

# Cleanup
brew cleanup
