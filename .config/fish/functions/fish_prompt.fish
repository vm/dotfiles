function fish_prompt
    set_color blue
    if test $VIRTUAL_ENV
        printf "(%s) " (basename $VIRTUAL_ENV)
    end

    set_color cyan
    printf '%s' (whoami)
    set_color normal
    printf '@'

    set_color magenta
    printf '%s' (hostname|cut -d . -f 1)
    set_color normal
    printf ' in '

    set_color yellow
    printf '%s' (prompt_pwd)
    set_color normal

    printf ' $ '
    set_color normal
end
