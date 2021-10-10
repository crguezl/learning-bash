traverseString() {
    local foo="una cadena"
    for (( i=0; i<${#foo}; i++ )); do
        echo "${foo:$i:2}"
    done
}

traverseString