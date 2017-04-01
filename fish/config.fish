. /Users/vignesh/.config/fish/virtual.fish
. /Users/vignesh/.config/fish/auto_activation.fish
. /Users/vignesh/.config/fish/projects.fish
. /Users/vignesh/.config/fish/colors.fish

function myfunc --on-event virtualenv_did_activate
    echo "The virtualenv" (basename $VIRTUAL_ENV) "was activated."
    set -gx APP_SETTINGS config.DevelopmentConfig
end

function fish_greeting
end

alias tmux "env TERM=screen-256color-italic tmux"
alias git hub
alias vim nvim
alias svgop "svgo --pretty --enable=removeTitle"

set -gx EDITOR nvim
set -gx PYTHONDONTWRITEBYTECODE 1
set -gx TERMINFO /usr/share/terminfo
set -gx TERM xterm-256color-italic

set -gx PATH $PATH /usr/local/sbin
set -gx PATH $PATH /usr/local/bin
set -gx PATH $PATH ./node_modules/.bin
