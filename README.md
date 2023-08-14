# dotfiles

This repository contains the dotfiles I use to configure my development environment and sync to [GitHub Codespaces](https://docs.github.com/en/codespaces/customizing-your-codespace/personalizing-github-codespaces-for-your-account#dotfiles) (read more in my [blog post](https://josh-ops.com/posts/github-codespaces-powerlevel10k/)). 

## Setup

These are instructions on how to set up your local environment by creating symbolic links (symlinks) to the dotfiles in this repo:

1. Create dotfiles repo, ie: `mkdir ~/dotfiles && cd ~/dotfiles && git init`
2. Run the `ln -s` commands below to create the appropriate symlinks
3. Commit your changes to the dotfiles repo

```bash
ln -s ~/dotfiles/.zshrc ~/.zshrc
ln -s ~/dotfiles/.p10k.zsh ~/.p10k.zsh
ln -s ~/dotfiles/.gitconfig ~/.gitconfig
```

## Unlink

To remove the symlinks, run the following commands:

```bash
unlink ~/.zshrc
unlink ~/.p10k.zsh
unlink ~/.gitconfig
```

## dotfiles with GitHub Codespaces

`install.sh` installs zsh plugins, copies over `.zshrc` and `.p10k.zsh`, and sets other defaults (like directory text color and time zone).

Mark `install.sh` as executable: `git add install.sh --chmod=+x`

See [link](https://burkeholland.github.io/posts/codespaces-dotfiles/) for more info

## Brewfile

```bash
# creating a Brewfile
brew bundle dump --file=~/.dotfiles/Brewfile --force
# installing a Brewfile
brew bundle install --file=~/.dotfiles/Brewfile
```

## VS Code

My default profile is saved as `Default.code-profile` (exported manually via Code > Settings > Profiles)

My extensions are exported (but not whether they are enabled or disabled) and saved as `my_vscode_extensions.sh` via the following command: 

```bash
code --list-extensions | sed -e 's/^/code --install-extension /' > my_vscode_extensions.sh
```
