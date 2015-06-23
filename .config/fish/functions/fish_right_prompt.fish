function fish_right_prompt
    set_color cyan
    echo (git symbolic-ref HEAD ^/dev/null | sed -e 's|^refs/heads/||')
    set_color normal
end
