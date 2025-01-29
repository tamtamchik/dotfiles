#! /bin/zsh

# Install Homebrew if not already installed
if ! command -v brew &> /dev/null; then
    echo "🍺 Installing Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
    echo "🍺 Homebrew is already installed. Skipping..."
fi

# Create .config directory if it doesn't exist
echo "📁 Creating .config directory..."
mkdir -p ~/.config

# Use stow to symlink the dotfiles
echo "🔗 Symlinking dotfiles..."
stow . --ignore=install.sh --ignore=README.md --ignore=LICENSE

# Install Brewfile
echo "📦 Installing Brewfile..."
brew bundle

echo "✨ Main installation complete!"

echo "🔍 Installing extras..."

# Install Foundry
echo "🛠️ Installing Foundry..."

curl -L https://foundry.paradigm.xyz | bash
foundryup --install stable

echo "✨ Extras installation complete!"
