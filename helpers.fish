function print
    # echo (gum style --bold --foreground "#5ce1e6" " ⇒ ") (gum style --bold "Finished bootstrapping")
    set message $argv[1]
    echo (gum style --bold --foreground "#5ce1e6" " ⇒ ") (gum style --bold "$message")
end
