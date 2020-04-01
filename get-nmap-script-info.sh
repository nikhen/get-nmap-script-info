#!/bin/bash

function check_input() {
    if [ -z $1 ]; then
        echo "Query parameter required."
        exit 1
    else
        echo $(date)". Getting NSE script information for: "$(tput setaf 2)$1$(tput sgr0) && sleep 1
    fi
}

function main() {
    i=1
    mkdir /tmp/gnsi/
    echo $(ls /usr/share/nmap/scripts/*$1* -1 2> /dev/null) > /tmp/gnsi/list.txt
    read -a a_dir < /tmp/gnsi/list.txt

    for d in ${a_dir[@]}
    do  
         echo "["$i"] Script information for" $(tput setaf 3)$d$(tput sgr0)"."
         nmap --script-help=$d
         ((i++))
         echo "" && sleep 1
    done

    if [ $i -lt 2 ]; then
        echo "Done. No script information found for: "$1
    fi
}

function cleanup() {
    rm -rf /tmp/gnsi/
}

check_input $1

main $1

cleanup
