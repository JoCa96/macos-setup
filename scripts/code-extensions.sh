#!/bin/bash

function save() {
    code --list-extensions >"./data/code-extensions.txt"
}

function install() {
    cat ./data/code-extensions.txt | xargs -L 1 echo code --install-extension
}

# the next line calls the function passed as the first parameter to the script.
# the remaining script arguments can be passed to this function.
$1
