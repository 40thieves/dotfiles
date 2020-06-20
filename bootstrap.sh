set -e

function confirm {
  read -p  "$1 (y/n)" -n 1 -r
  echo    # (optional) move to a new line
  if [[ ! $REPLY =~ ^[Yy]$ ]]
  then
      [[ "$0" = "$BASH_SOURCE" ]] && exit 1 || return 1 # handle exits from shell or function but don't exit interactive shell
  fi
}

echo "Hello $(whoami)! Running set up"

confirm "Install Homebrew?"
echo "Installing Homebrew"

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

brew update
brew upgrade

confirm "Run brew install for CLI utilities?"
echo "Brew installing CLI utilities"

brew install \
  git tree bat diff-so-fancy fzf pick tldr jq \
  nginx volta \
  pandoc wifi-password

confirm "Run brew install for zsh?"
echo "Brew installing zsh"

# Install zsh
brew install zsh zsh-completions zsh-syntax-highlighting
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
chsh -s /bin/zsh

confirm "Set up fzf?"
echo "Setting up fzf"

$(brew --prefix)/opt/fzf/install --all

confirm "Run brew cask install?"
echo "Brew cask installing"

brew cask install \
  google-chrome firefox microsoft-edge opera \
  iterm2 visual-studio-code sublime-text gitup typora slack kap \
  tweetbot spectacle hiddenbar bettertouchtool \
  tyke spectacle alfred beardedspice dropbox spotify whatsapp minecraft zoomus \
  qlcolorcode qlstephen qlmarkdown quicklook-json qlimagesize suspicious-package \
  homebrew/cask-fonts/font-fira-code

brew cleanup

confirm "Run volta install node?"
echo "volta installing"

volta install node

confirm "Symlink config files to home dir?"
echo "Linking config"

ln -s ~/.bin/dotfiles/.zshrc ~/.zshrc
ln -s ~/.bin/dotfiles/.gitconfig ~/.gitconfig
ln -s ~/.bin/dotfiles/.npmrc ~/.npmrc

echo "Consider running .macos"

echo "Done."
