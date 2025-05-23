echo "Setting up..."

defaults -currentHost write -globalDomain NSStatusItemSpacing -int 6 
defaults -currentHost write -globalDomain NSStatusItemSelectionPadding -int 6
defaults write com.apple.dock autohide-time-modifier -float 0.7
defaults write com.apple.dock autohide-delay -float 0
defaults write com.apple.dock "autohide" -bool "true" 
defaults write com.apple.dock "tilesize" -int "46" 
defaults write com.apple.dock "show-recents" -bool "false" 
defaults write com.apple.dock "mineffect" -string "genie" 
defaults write com.apple.dock "mru-spaces" -bool "false" 
defaults write com.apple.AppleMultitouchTrackpad "FirstClickThreshold" -int "0"
defaults write NSGlobalDomain "ApplePressAndHoldEnabled" -bool "false"
defaults write com.apple.HIToolbox AppleFnUsageType -int "2"
defaults write NSGlobalDomain "AppleShowAllExtensions" -bool "true" 
defaults write com.apple.finder "QuitMenuItem" -bool "false" 
defaults write com.apple.finder "ShowPathbar" -bool "true" 
defaults write com.apple.finder "FXPreferredViewStyle" -string "Nlsv" 
defaults write com.apple.finder "_FXSortFoldersFirst" -bool "true"
defaults write com.apple.TextEdit "RichText" -bool "false" 
defaults write com.apple.TextEdit "TabWidth" '4'

killall Dock
killall Finder
killall TextEdit

echo "Setup done. Please restart your Mac."
