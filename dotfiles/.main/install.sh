#!/usr/bin/bash
#
# ~/dotfiles/.main/install.sh
#

set -a
. .env
set +a

# set a hooks dir for git (bare config)
$GIT config --local core.hooksPath "$HOME/dotfiles/.main/hooks"

# install apps
if [[ -f package.sh ]]; then
    . ./package.sh
fi
