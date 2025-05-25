echo "Setting up..."

# Set menu bar item spacing
defaults -currentHost write -globalDomain NSStatusItemSpacing -int 6

# Set menu bar item selection padding
defaults -currentHost write -globalDomain NSStatusItemSelectionPadding -int 6

# Set Dock hide/show animation speed
defaults write com.apple.dock autohide-time-modifier -float 0.7

# Remove Dock show delay
defaults write com.apple.dock autohide-delay -float 0

# Enable Dock auto-hide
defaults write com.apple.dock "autohide" -bool "true"

# Set Dock icon size
defaults write com.apple.dock "tilesize" -int "46"

# Hide recent apps in Dock
defaults write com.apple.dock "show-recents" -bool "false"

# Set Dock minimize effect to Genie
defaults write com.apple.dock "mineffect" -string "genie"

# Disable auto-rearrange Spaces
defaults write com.apple.dock "mru-spaces" -bool "false"

# Set trackpad click sensitivity
defaults write com.apple.AppleMultitouchTrackpad "FirstClickThreshold" -int "0"

# Disable press-and-hold for keys
defaults write NSGlobalDomain "ApplePressAndHoldEnabled" -bool "false"

# Set Fn key to show F1, F2, etc.
defaults write com.apple.HIToolbox AppleFnUsageType -int "2"

# Show all file extensions
defaults write NSGlobalDomain "AppleShowAllExtensions" -bool "true"

# Hide Finder quit menu
defaults write com.apple.finder "QuitMenuItem" -bool "false"

# Show Finder path bar
defaults write com.apple.finder "ShowPathbar" -bool "true"

# Set Finder default view to list
defaults write com.apple.finder "FXPreferredViewStyle" -string "Nlsv"

# Show folders first in Finder
defaults write com.apple.finder "_FXSortFoldersFirst" -bool "true"

# Set TextEdit to plain text by default
defaults write com.apple.TextEdit "RichText" -bool "false"

# Set TextEdit tab width to 4
defaults write com.apple.TextEdit "TabWidth" '4'

# Set rows and columns to 5 and 7 in Launchpad
defaults write com.apple.dock springboard-rows -int 6
defaults write com.apple.dock springboard-columns -int 7

# Restart Dock to apply changes
killall Dock

# Restart Finder to apply changes
killall Finder

# Restart TextEdit to apply changes
killall TextEdit

echo "Setup done. Please restart your Mac."
