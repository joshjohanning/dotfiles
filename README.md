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

Running this command exports formulae, casks, and VS Code extensions to a file:

```bash
# creating a Brewfile
brew bundle dump --file=~/dotfiles/Brewfile --force
# installing a Brewfile
brew bundle install --file=~/dotfiles/Brewfile
```

## VS Code

My default profile is saved as `Default.code-profile` (exported manually via Code > Settings > Profiles)

Extensions are exported via the `brew` command above.

## iTerm2

My iTerm2 profile is saved as `iterm2-profile.json` (exported manually via iTerm2 > Settings > Profiles > Other Actions > Save Profile as JSON)

## GitHub CLI Extensions

Exporting a list of installed `gh` extensions:

```bash
gh extension list | awk '{print $3}' > gh-extensions-list.txt
```

## Installing OhMyZsh

If OhMyZsh is not installed (e.g. on a new machine), run the following command:

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

## Updating OhMyZsh and PowerLevel10k

```bash
omz update
git -C ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k pull
```
