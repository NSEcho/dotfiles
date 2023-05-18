if status is-interactive
    # Commands to run in interactive sessions can go here
    abbr -a !! --position anywhere --function last_history_item
    abbr -a litem --position anywhere --function last_item
    abbr -a gcl git clone

    fish_vi_key_bindings
end
