#!/bin/bash
echo "$1" > /c/Users/jan.hlubucek/Desktop/DEV-MY/xxx.txt
cat /c/Users/jan.hlubucek/Desktop/DEV-MY/xxx.txt | sed 's/public static /        self::/' | cut -d'=' -f1 | sed "s/ $/,/"