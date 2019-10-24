

alias br='git branch | grep ^\* | cut -c 3-'
alias dff='git diff'
alias st='git status'
alias add='git add'
alias commitpush='git add . && git commit -m "commit all" && git push'
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
