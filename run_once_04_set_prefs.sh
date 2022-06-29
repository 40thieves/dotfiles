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
# TO re-enable:
# defaults write NSGlobalDomain com.apple.swipescrolldirection -bool true

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

# Disable annoying iCloud notification in System Prefs
# defaults delete com.apple.systempreferences AttentionPrefBundleIDs
