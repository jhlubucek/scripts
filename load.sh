#!/bin/bash
alias cddev='cd /var/www/html/private/jhlubucek/'
alias br='git branch | grep ^\* | cut -c 3-'
alias dff='git diff'
alias st='git status'
alias add='git add'
alias cdprivate='cd /var/www/html/private/jhlubucek'
alias editnotes='nano /home/jhlubucek/notes.txt'
alias notes='cat ~/notes.txt'
alias editnotes='nano ~/notes.txt'
alias pull='git pull && composer install'
alias change='~/scripts/caseChange.sh'
#--------------------------------------------------------scripts
alias pullall='~/scripts/pull.sh'
alias ru='~/scripts/reset.sh'
alias check='~/scripts/check.sh'
alias branches='~/scripts/branches.sh'

cd /var/www/html/private/jhlubucek/
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

