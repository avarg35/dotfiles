#!/usr/bin/env zsh

echo "\n<<< Starting Homebrew Setup >>>\n"

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# TODO: Keep an eye out for a different `--no-quarintine` solution.
# Currently, you can't do brew bundle --no-quarintine as an option.
# It's currently exported in zshrc:
# export HOMEBREW_CASK_OPTS="--no-quarintine"
# https://github.com/Homebrew/homebrew-bundle/issues/474

brew bundle --verbose
