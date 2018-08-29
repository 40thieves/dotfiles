# dotfiles

Wut? [This.](https://dotfiles.github.io/)

### Installation (hard way)

1. `mkdir ~/dotfiles`
2. `git clone git@github.com:40thieves/dotfiles.git ~/dotfiles`
3. `ln -s ~/dotfiles/.zshrc ~/.zshrc`
4. `ln -s ~/dotfiles/.gitconfig ~/.gitconfig`
5. `ln -s ~/dotfiles/.npmrc ~/.npmrc`

### Installation (easy, untested way)

1. `mkdir ~/dotfiles`
2. `git clone git@github.com:40thieves/dotfiles.git ~/dotfiles`
3. `~/dotfiles/bootstrap.sh`
