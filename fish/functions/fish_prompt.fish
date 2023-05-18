function fish_prompt
    printf '%snsecho%s %s|%s %s%s%s %s>%s ' (set_color -o red) (set_color normal) \
           (set_color -o cyan) (set_color normal) \
           (set_color $fish_color_cwd) (prompt_pwd) (set_color normal) \
           (set_color -o cyan) (set_color normal)
end
