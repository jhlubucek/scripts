#!/bin/bash 
if [ "$#" -eq 0  ];  then
	project="all"
	array=( chh fingo skfingo finchef )
	for i in "${array[@]}"
	do
        	x=$(pwd | grep "$i" -wc)
        	if [ "$x" -eq 1  ];  then
                	project="$i"
        	fi
	done
elif [ "$#" -eq 1  ];  then
	project="$1"
else
	echo "to many arguments"
fi

check=1;
if [ "$project" == "skfingo" -o "$project" == "all" ]; then
 echo SK-FINGO
 /var/www/html/private/jhlubucek/skfingo-web/scripts/restart-web.sh /tmp/jhlubucek/skfingo-unibox
 check=0
fi
if [ "$project" == "chh" -o "$project" == "all" ]; then
 echo CHH
 /var/www/html/private/jhlubucek/chh-web/scripts/restart-web.sh /tmp/jhlubucek/chh-unibox
 check=0
fi
if [ "$project" == "fingo" -o "$project" == "all" ]; then
 echo FINGO
 /var/www/html/private/jhlubucek/fingo-web/scripts/restart-web.sh /tmp/jhlubucek/fingo-unibox
 check=0
fi
if [ "$project" == "finchef" -o "$project" == "all" ]; then
 echo FINCHEF
 /var/www/html/private/jhlubucek/finchef-web/scripts/restart-web.sh /tmp/jhlubucek/finchef-unibox
 check=0
fi

if [ $check -eq 0 ]; then
 echo restarted at: $(date +%r)
else
 echo "wrong parameter: "$project
 echo 'use: "skfingo" OR "chh" OR "fingo" OR "finchef".'
fi


