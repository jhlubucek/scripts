#!/bin/bash
dev=$1
#=====================================================================ntb specific
x="cd $dev"
alias cddevv=$x
x="cat $dev/scripts2/load/notes.txt"
alias notes=$x
x="nano $dev/scripts2/load/notes.txt"
alias editnotes=$
alias addtodo='/c/Users/jan.hlubucek/Desktop/DEV-MY/scripts/addtodo.sh'
alias rmbranches='git branch | grep -v "master" | xargs git branch -D'
alias localbranches='git branch | grep -v "master"'
#--------------------------------------------------------scriprs ntb

#CD
cd $dev/Automats/ccs-master 
echo "CSS local br------------------"
localbranches
cd $dev/Automats/extranet-master 
echo "EXTRANET local br------------------"
localbranches

cd $dev/Automats