EXTENSIONS=(
  aaron-bond.better-comments
  cmstead.jsrefactor
  dbaeumer.vscode-eslint
  esbenp.prettier-vscode
  GitHub.vscode-pull-request-github
  mikestead.dotenv
  ms-vscode.sublime-keybindings
  silvenon.mdx
  SimonSiefke.svg-preview
  streetsidesoftware.code-spell-checker
  Zignd.html-css-class-completion
  ziyasal.vscode-open-in-github
)

for EXTENSION in "${EXTENSIONS[@]}";
  do code --install-extension $EXTENSION;
done
