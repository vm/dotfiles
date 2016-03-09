. /Users/vignesh/.config/fish/virtual.fish

. /Users/vignesh/.config/fish/auto_activation.fish
. /Users/vignesh/.config/fish/global_requirements.fish
. /Users/vignesh/.config/fish/projects.fish

set -l base03  "--bold black"
set -l base02  "black"
set -l base01  "--bold green"
set -l base00  "--bold yellow"
set -l base0   "--bold blue"
set -l base1   "--bold cyan"
set -l base2   "white"
set -l base3   "--bold white"
set -l yellow  "yellow"
set -l orange  "--bold red"
set -l red     "red"
set -l magenta "magenta"
set -l violet  "--bold magenta"
set -l blue    "blue"
set -l cyan    "cyan"
set -l green   "green"

set -g fish_color_normal      $base0
set -g fish_color_command     $base0
set -g fish_color_quote       $cyan
set -g fish_color_redirection $base0
set -g fish_color_end         $base0
set -g fish_color_error       $red
set -g fish_color_param       $blue
set -g fish_color_comment     $base01
set -g fish_color_match       $cyan
set -g fish_color_search_match "--background=$base02"
set -g fish_color_operator    $orange
set -g fish_color_escape      $cyan

set -g fish_color_hostname    $cyan
set -g fish_color_cwd         $yellow
set -g fish_color_git         $green

function myfunc --on-event virtualenv_did_activate
    echo "The virtualenv" (basename $VIRTUAL_ENV) "was activated."
    set -gx APP_SETTINGS config.DevelopmentConfig
end

function fish_greeting
end

alias git hub
alias vim nvim

set -gx PATH $PATH /Applications/Racket/bin
set -gx PATH $PATH /usr/local/sbin
set -gx PATH $PATH /usr/local/bin
set -gx PATH $PATH ~/Downloads/arcanist/bin
set -gx PATH $PATH /Applications/Postgres.app/Contents/Versions/9.4/bin
