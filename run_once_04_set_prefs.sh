#!/bin/sh

set -e

# WARNING: NOT YET TESTED WITH FRESH MACHINE

# Disable the sound effects on boot
sudo nvram SystemAudioVolume=%80 # If this doesn't work then try: sudo nvram SystemAudioVolume=" "
# To reenable
# sudo nvram -d SystemAudioVolume

# Enable tap to click for this user and for the login screen
defaults write com.apple.AppleMultitouchTrackpad Clicking -bool true
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
defaults write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
# To disable:
# defaults write com.apple.AppleMultitouchTrackpad Clicking -bool false
# sudo defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool false
# sudo defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 0
# sudo defaults write NSGlobalDomain com.apple.mouse.tapBehavior -int 0

# Disable "natural" scrolling
defaults write NSGlobalDomain com.apple.swipescrolldirection -bool false
# To re-enable:
# defaults write NSGlobalDomain com.apple.swipescrolldirection -bool true

# Set the icon size of Dock items to 36 pixels
defaults write com.apple.dock tilesize -int 36

# Automatically hide and show the Dock
defaults write com.apple.dock autohide -bool true
# To re-enable:
# defaults write com.apple.dock autohide -bool false

# Finder: show hidden files by default
defaults write com.apple.finder AppleShowAllFiles -bool true
# To disable:
# defaults write com.apple.finder AppleShowAllFiles -bool false

# Finder: show all filename extensions
defaults write NSGlobalDomain AppleShowAllExtensions -bool true
# To disable
# defaults write NSGlobalDomain AppleShowAllExtensions -bool false

# Disable automatic full stop substitution
defaults write NSGlobalDomain NSAutomaticPeriodSubstitutionEnabled -bool false
# To re-enable:
# defaults write NSGlobalDomain NSAutomaticPeriodSubstitutionEnabled -bool true

# Disable hot corners
defaults write com.apple.dock wvous-tl-corner -int 0
defaults write com.apple.dock wvous-tr-corner -int 0
defaults write com.apple.dock wvous-bl-corner -int 0
defaults write com.apple.dock wvous-br-corner -int 0

# Disable annoying iCloud notification in System Prefs
# defaults delete com.apple.systempreferences AttentionPrefBundleIDs
