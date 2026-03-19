#!/usr/bin/env zsh
set -euo pipefail

DOTFILES="$HOME/dotfiles"

mkdir -p "$DOTFILES/zsh"

print "Linking git config..."
ln -sfn "$DOTFILES/.gitconfig" "$HOME/.gitconfig"

print "Linking zsh config..."
ln -sfn "$DOTFILES/.zshrc" "$HOME/.zshrc"
ln -sfn "$DOTFILES/.zprofile" "$HOME/.zprofile"

print "Ensuring minimal zsh env files exist..."
printf '%s\n' '# Keep this minimal; login shell setup lives in ~/.zprofile' > "$HOME/.zshenv"
printf '%s\n' '# POSIX shell profile kept minimal; zsh login setup lives in ~/.zprofile' > "$HOME/.profile"

print "Installing brew packages..."
brew bundle --file="$DOTFILES/Brewfile"

print "Done. Reload your shell with: exec zsh"
