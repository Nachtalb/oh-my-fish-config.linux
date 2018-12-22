#!/usr/bin/fish

# Python Stuff
set -gx PYTHONDONTWRITEBYTECODE 1
set -x VIRTUAL_ENV_DISABLE_PROMPT 1
set -gx PYTHONSTARTUP $HOME/.pythonrc

# Load pyenv
if type -q pyenv
    status --is-interactive; and source (pyenv init -|psub)
    status --is-interactive; and source (pyenv virtualenv-init -|psub)
end

# Use VIM as default
set -gx VISUAL vim
set -gx EDITOR $VISUAL

# Hilighting [https://www.gnu.org/software/src-highlite/]
set -gx LESSOPEN "| /usr/bin/source-highlight-esc.sh %s"
set -gx LESS ' -R '

# Add etcher-cli if available [https://etcher.io/]
if test -d /opt/etcher-cli
    set -gx PATH /opt/etcher-cli $PATH
end

# Include snap desktip file location to global desktop file index
set -gx XDG_DATA_DIRS /var/lib/snapd/desktop $XDG_DATA_DIRS

source ~/.config/omf/abbreviations.fish
source ~/.config/omf/alias.fish

# Load file that is not tracked by this repo, for machine specific stuff
if test -e ~/.config/omf/user.fish
    source ~/.config/omf/user.fish
end

# Load https://github.com/wting/autojump
if test -f /home/bernd/.autojump/share/autojump/autojump.fish
    source /home/bernd/.autojump/share/autojump/autojump.fish
end

set -gx PATH $HOME/bin $PATH
set -gx PATH $HOME/.config/omf/bin $PATH

for file in scripts/*.fish
    source $file
end
