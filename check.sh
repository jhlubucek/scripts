#!/bin/bash
touch ~/scripts/tmp.tmp
git status --porcelain |grep "^ M" |cut -d" " -f3 > ~/scripts/tmp.tmp

while read f
do
if [ -f "$f" ]; then
  n=0
  array=( dump file_put_contents die Debugger:: )
  for i in "${array[@]}"
  do
     n=$(($n + $(git diff "$f" | grep "$i" | wc -l)))
  done

  echo "$n"": times-IN  ""$f"

  for i in "${array[@]}"
  do
     git diff "$f" | grep "$i"
  done
fi
done <~/scripts/tmp.tmp

git status --porcelain |grep "^??" |cut -d" " -f2 > ~/scripts/tmp.tmp

while read f
do
if [ -f "$f" ]; then
  n=0
  array=( dump file_put_contents )
  for i in "${array[@]}"
  do
     n=$(($n + $(cat "$f" | grep "$i" | wc -l)))
  done

  echo "$n"": times-IN  ""$f"

  for i in "${array[@]}"
  do
     cat "$f" | grep "$i"
  done
fi
done <~/scripts/tmp.tmp


rm ~/scripts/tmp.tmp
