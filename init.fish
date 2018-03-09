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

source ~/.config/omf/abbreviations.fish
