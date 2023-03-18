function gents \
    --description "Print entitlements from the file or application" 
    codesign -dv --entitlements :- $argv[1] 2> /dev/null | xmllint --format -
end
