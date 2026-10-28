#!/bin/bash

# Exit immediately if any command exits with a non-zero status
set -e

echo "=== Starting Arch Hyprland Dotfiles Installation ==="

# 1. Update system and install base development tools & git
echo "[-] Installing base-devel and git..."
sudo pacman -Syu --needed --noconfirm base-devel git

# 2. Install video drivers (Mesa, Vulkan, and Intel graphics support)
echo "[-] Installing video drivers (Mesa, Vulkan, Intel)..."
sudo pacman -S --needed --noconfirm mesa vulkan-intel intel-media-driver

# 3. Install Hyprland window manager and Kitty terminal emulator
echo "[-] Installing Hyprland and Kitty..."
sudo pacman -S --needed --noconfirm hyprland kitty

# 4. Install Fish shell and Starship prompt
echo "[-] Installing Fish and Starship..."
sudo pacman -S --needed --noconfirm fish starship

# 4.1 Automatically change the default user shell to Fish
if [ "$SHELL" != "$(which fish)" ]; then
  echo "[-] Changing default shell to Fish..."
  chsh -s "$(which fish)"
fi

# 4.2 Configure Starship prompt to initialize inside Fish
echo "[-] Configuring Starship prompt for Fish..."
mkdir -p "$HOME/.config/fish"
if ! grep -q "starship init fish" "$HOME/.config/fish/config.fish" 2>/dev/null; then
  echo "starship init fish | source" >>"$HOME/.config/fish/config.fish"
fi

# 5. Install Btop system monitor
echo "[-] Installing Btop..."
sudo pacman -S --needed --noconfirm btop

# 6. Pull or clone the GitHub configuration into ~/.config
REPO_URL="https://github.com/bhavyyyyyyyaa/daily-basic-rice.git"
CONFIG_DIR="$HOME/.config"

echo "[-] Setting up dotfiles from GitHub..."

# Check if ~/.config is already a git repository
if [ -d "$CONFIG_DIR/.git" ]; then
  echo "[+] Dotfiles repository already exists. Pulling latest updates..."
  cd "$CONFIG_DIR"
  git pull origin main
else
  # If a non-git .config folder exists, back it up safely before cloning
  if [ -d "$CONFIG_DIR" ]; then
    echo "[+] Backing up existing .config folder..."
    mv "$CONFIG_DIR" "$HOME/.config.bak.$(date +%s)"
  fi

  echo "[+] Cloning repository directly into ~/.config..."
  git clone "$REPO_URL" "$CONFIG_DIR"
fi

echo "=== Installation Complete! Please restart your session or reboot. ==="
