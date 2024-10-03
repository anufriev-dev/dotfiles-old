#!/usr/bin/bash

set -a
. $HOME/dotfiles/.main/.env
set +a

# set a hooks dir for git (bare config)
$GIT config --local core.hooksPath $HOOKS_DIR

# install apps
if [[ -f "package-manager.sh" ]]; then
    . ./package-manager.sh
fi
