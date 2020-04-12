#!/bin/bash
dev=$1
#=====================================================================ntb specific
x="cd $dev"
alias cddev=$x
x="cat $dev/scripts/load/notes.txt"
alias notes=$x
x="nano $dev/scripts/load/notes.txt"
alias editnotes=$x
alias br='git branch | grep ^\* | cut -c 3-'
alias dff='git diff'
alias st='git status'
alias add='git add'
alias pushall=' git pull && git add -A && git commit -m "commit all" && git push && git pull'
alias localbranches='git branch | grep -v "master"'
alias ll='ls -la'
#--------------------------------------------------------scripts
alias branches='~/scripts/branches.sh'
alias change='~/scripts/caseChange.sh'
clear
echo ' _     _   _   _                      '
echo '| |   (_) | | | |                     '
echo '| |__  _  | |_| | ___  _ __  ______ _ '
echo '| `_ \| | |  _  |/ _ \| `_ \|_  / _` |'
echo '| | | | | | | | | (_) | | | |/ / (_| |'
echo '|_| |_|_| \_| |_/\___/|_| |_/___\__,_|'
echo ''
TODAY=$(date '+%A %d-%m-%y')
TIME=$(date '+%H:%M')
HOST=$(hostname)
echo "-------------------------------------------------------------"
echo "Date: $TODAY    TIME: $TIME    Host:$HOST"
echo "-------------------------------------------------------------"

