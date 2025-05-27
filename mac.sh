echo "Setting up..."
set -e

echo "This script will change system settings and restart Dock, Finder, and TextEdit."
read -p "Continue? (y/N): " confirm
if [[ ! $confirm =~ ^[Yy]$ ]]; then
    echo "Aborted."
    exit 1
fi

# --- Dock Settings ---
echo "Configuring Dock..."
defaults write com.apple.dock autohide-time-modifier -float 0.7
defaults write com.apple.dock autohide-delay -float 0
defaults write com.apple.dock autohide -bool true
defaults write com.apple.dock tilesize -int 46
defaults write com.apple.dock largesize -float 46
defaults write com.apple.dock magnification -bool true
defaults write com.apple.dock show-recents -bool false
defaults write com.apple.dock mineffect -string "genie"
defaults write com.apple.dock mru-spaces -bool false
defaults write com.apple.dock springboard-rows -int 6
defaults write com.apple.dock springboard-columns -int 7

# --- Menu Bar Settings ---
echo "Configuring menu bar..."
defaults -currentHost write -globalDomain NSStatusItemSpacing -int 6
defaults -currentHost write -globalDomain NSStatusItemSelectionPadding -int 6

# --- Finder Settings ---
echo "Configuring Finder..."
defaults write com.apple.finder QuitMenuItem -bool false
defaults write com.apple.finder ShowPathbar -bool true
defaults write com.apple.finder FXPreferredViewStyle -string "Nlsv"
defaults write com.apple.finder _FXSortFoldersFirst -bool true

# --- Trackpad & Keyboard ---
echo "Configuring trackpad and keyboard..."
defaults write com.apple.AppleMultitouchTrackpad FirstClickThreshold -int 0
defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false
defaults write com.apple.HIToolbox AppleFnUsageType -int 2

# --- TextEdit ---
echo "Configuring TextEdit..."
defaults write com.apple.TextEdit RichText -bool false
defaults write com.apple.TextEdit TabWidth -int 4

# --- Miscellaneous ---
echo "Configuring miscellaneous settings..."
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# --- Restart Affected Apps ---
echo "Restarting Dock, Finder, and TextEdit..."
killall Dock
killall Finder
killall TextEdit

echo "Setup done. Please restart your Mac."
