#!/bin/bash

#=====================================================================ntb specific
alias cddev='cd /c/Users/jan.hlubucek/Desktop/DEV-MY'
alias cdautomats='cd /c/Users/jan.hlubucek/Desktop/DEV-MY/Automats'
alias notes='cat ~/notes.txt'
alias editnotes='nano ~/notes.txt'
alias addtodo='/c/Users/jan.hlubucek/Desktop/DEV-MY/scripts/addtodo.sh'
alias rmbranches='git branch | grep -v "master" | xargs git branch -D'
alias localbranches='git branch | grep -v "master"'
#--------------------------------------------------------scriprs ntb

#CD
cd /c/Users/jan.hlubucek/Desktop/DEV-MY/Automats/ccs-master 
echo "CSS local br------------------"
localbranches
cd /c/Users/jan.hlubucek/Desktop/DEV-MY/Automats/extranet-master 
echo "EXTRANET local br------------------"
localbranches

cd /c/Users/jan.hlubucek/Desktop/DEV-MY/Automats