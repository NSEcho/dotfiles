function ginit --description "Initialize go module"
    set -l module_name $argv[1]
    set -l message "Initialized module github.com/lateralusd/$module_name"
    go mod init github.com/lateralusd/$module_name > /dev/null 2>&1
    echo (gum style --bold --foreground "#5ce1e6" " ⇒ ") (gum style --bold "$message")
end
