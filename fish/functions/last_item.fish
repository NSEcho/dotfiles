function last_item
    set -l message (echo $history[1])
    set -l splitted (string split " " "$message")
    set -l total (count $splitted)
    set -l last $splitted[$total]
    echo $last
end
