# dotfiles

## Setup

```bash
ln -s ~/dotfiles/.zshrc ~/.zshrc
ln -s ~/dotfiles/.p10k.zsh ~/.p10k.zsh
ln -s ~/dotfiles/.gitconfig ~/.gitconfig
```

## Unlink

```bash
unlink ~/.zshrc
unlink ~/.p10k.zsh
unlink ~/.gitconfig
```

## dotfiles with GitHub Codespaces

`install.sh` installs zsh plugins, copies over `.zshrc` and `.p10k.zsh`, etc.

Mark `install.sh` as executable: `git add install.sh --chmod=+x`

See [link](https://burkeholland.github.io/posts/codespaces-dotfiles/) for more info

## Brewfile

```bash
# creating a Brewfile
brew bundle dump --file=~/.dotfiles/Brewfile --force
# installing a Brewfile
brew bundle install --file=~/.dotfiles/Brewfile
```
