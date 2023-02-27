function print
    set message $argv[1]
    echo (gum style --bold --foreground "#5ce1e6" " ⇒ ") (gum style --bold "$message")
end
