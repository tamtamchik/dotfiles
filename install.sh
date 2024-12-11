#! /bin/zsh

# Create .config directory if it doesn't exist
mkdir -p ~/.config

# Copy the dotfiles to the .config directory
cp -r .config/nix ~/.config
cp .zshrc ~/.zshrc

# Initialize nix-darwin
nix run nix-darwin --extra-experimental-features "nix-command flakes" -- switch --flake ~/.config/nix#mbp

# Remove the dotfiles
rm -rf ~/.config/nix
rm -rf ~/.zshrc

# Use stow to symlink the dotfiles
stow . --ignore=install.sh --ignore=README.md --ignore=LICENSE