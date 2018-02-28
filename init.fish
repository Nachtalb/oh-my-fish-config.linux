# Python developers otherwise
set -gx PYTHONDONTWRITEBYTECODE 1

# Disable default virtualenv prompt
set -x VIRTUAL_ENV_DISABLE_PROMPT 1

# Load pyenv
if type -q pyenv
    status --is-interactive; and source (pyenv init -|psub)
    status --is-interactive; and source (pyenv virtualenv-init -|psub)
end

set -gx VISUAL vim
set -gx EDITOR $VISUAL

set -gx LESSOPEN "| /usr/bin/source-highlight-esc.sh %s"
set -gx LESS ' -R '

# Add etcher-cli if available
if test -d /opt/etcher-cli
    set -gx PATH /opt/etcher-cli $PATH
end

source ~/.config/omf/abbreviations.fish
source ~/.config/omf/hooks.fish
