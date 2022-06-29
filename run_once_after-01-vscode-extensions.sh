#!/bin/sh

set -eset -e

EXTENSIONS=(
  aaron-bond.better-comments
  cmstead.js-codeformer
  dbaeumer.vscode-eslint
  esbenp.prettier-vscode
  GitHub.vscode-pull-request-github
  mikestead.dotenv
  ms-vscode.sublime-keybindings
  sdras.inbedby7pm
  SimonSiefke.svg-preview
  streetsidesoftware.code-spell-checker
  Zignd.html-css-class-completion
  ziyasal.vscode-open-in-github
)

for EXTENSION in "${EXTENSIONS[@]}";
  do code --install-extension $EXTENSION;
done
