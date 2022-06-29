#!/bin/sh

set -eset -e

sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
# chsh -s /bin/zsh - still needed?
