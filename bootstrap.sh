echo "Hello $(whoami)! Running set up"

echo "Installing Homebrew"

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew update
brew upgrade --all

echo "Brew installing"

brew install tree bat diff-so-fancy fzf pick tldr wifi-password jq nginx

# Install zsh
brew install zsh zsh-completions zsh-syntax-highlighting
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
chsh -s /bin/zsh

echo "Brew cask installing"

brew cask install google-chrome firefox opera visual-studio-code iterm2 \
gitup sublime-text typora alfred beardedspice slack flux kap rescuetime tyke \
qlcolorcode qlstephen qlmarkdown quicklook-json qlimagesize suspicious-package

brew cleanup

echo "Installing nvm"

curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash
nvm alias default 8 # Make node 8 the default

echo "npm installing"

npm install -g gulp-cli nodemon serve create-react-app

echo "Linking config"

ln -s ~/dotfiles/.zshrc ~/.zshrc
ln -s ~/dotfiles/.gitconfig ~/.gitconfig
ln -s ~/dotfiles/.npmrc ~/.npmrc

echo "Consider running https://github.com/mathiasbynens/dotfiles/blob/master/.macos"

echo "Done."
