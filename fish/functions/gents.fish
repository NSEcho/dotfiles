function gents
    codesign -dv --entitlements :- $argv[1] 2> /dev/null | xmllint --format -
end
