#!/usr/bin/bash
#
# ~/dotfiles/.main/install.sh
#

export GIT="/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME"
export EXT_PATH="$HOME/dotfiles/.main/.vscode/extensions.txt"
export BASE_BRANCH=$($GIT rev-parse --abbrev-ref HEAD)


# set a hooks dir for git (bare config)
$GIT config --local core.hooksPath "$HOME/dotfiles/.main/hooks"

# install apps
if [[ -f package.sh ]]; then
    . ./package.sh
fi
