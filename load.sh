. /c/Users/jan.hlubucek/Desktop/DEV-MY/scripts/load-specific.sh

alias br='git branch | grep ^\* | cut -c 3-'
alias dff='git diff'
alias st='git status'
alias add='git add'
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