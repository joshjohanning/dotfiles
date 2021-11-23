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

## Brewfile

```bash
# creating a Brewfile
brew bundle dump --file=~/.dotfiles/Brewfile --force
# installing a Brewfile
brew bundle install --file=~/.dotfiles/Brewfile
```
