echo "Hello $(whoami)! Running set up"

echo "Installing Homebrew"

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew update
brew upgrade

echo "Brew installing"

brew install tree bat diff-so-fancy fzf pick tldr wifi-password jq nginx nvm

# Install zsh
brew install zsh zsh-completions zsh-syntax-highlighting
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
chsh -s /bin/zsh

echo "Brew cask installing"

brew cask install google-chrome firefox opera visual-studio-code iterm2 \
gitup sublime-text typora spectacle alfred beardedspice slack flux kap rescuetime tyke \
qlcolorcode qlstephen qlmarkdown quicklook-json qlimagesize suspicious-package

brew cleanup

echo "npm installing"

nvm alias default 8 # Make node 8 the default
npm install -g gulp-cli nodemon serve create-react-app

echo "Linking config"

ln -s ~/.bin/dotfiles/.zshrc ~/.zshrc
ln -s ~/.bin/dotfiles/.gitconfig ~/.gitconfig
ln -s ~/.bin/dotfiles/.npmrc ~/.npmrc

echo "Consider running https://github.com/mathiasbynens/dotfiles/blob/master/.macos"

echo "Done."
