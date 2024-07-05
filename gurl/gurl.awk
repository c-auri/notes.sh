BEGIN {
    IGNORECASE = 1
}
/^\s*$/ {
    current_table = ""
}
/^\[.*\]$/ {
    current_table = substr($0, 2, length - 2)
}
current_table == table && $1 ~ key {
    result = $2
}
END {
    print result
}
