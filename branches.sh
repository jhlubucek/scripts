#!/bin/bash

project="err"
array=( chh-web fingo-web skfingo-web finchef-web )
        for i in "${array[@]}"
        do
                x=$(pwd | grep "$i" -wc)
                if [ "$x" -eq 1  ];  then
                        cd "/var/www/html/private/jhlubucek/$i/chytryhonza"
			printf  "ChytryHonza:	"
			git rev-parse --abbrev-ref HEAD

			cd "/var/www/html/private/jhlubucek/$i/unibox"
			printf  "Unibox:		"
			git rev-parse --abbrev-ref HEAD

			cd "/var/www/html/private/jhlubucek/$i/administration"
			printf  "Administration:	"
			git rev-parse --abbrev-ref HEAD

			exit 0
                fi
        done

	echo "ERR: unknown project"
	exit 1
