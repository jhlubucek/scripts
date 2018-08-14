#!/bin/bash
path=$(pwd)
check=0

if [ $path == '/var/www/html/private/jhlubucek/chh-web' -o  $path == '/var/www/html/private/jhlubucek/skfingo-web' -o $path == '/var/www/html/private/jhlubucek/finchef-web' ]; then
        check=1
fi

if [ $check -eq 0 ]; then
        echo 'Can not execute in "'$path'"'
        exit
fi

cd './chytryhonza'

for i in {0..2}
do
	if [ $i == 0 ]; then
		 cd '../chytryhonza'
	fi
	if [ $i == 1 ]; then
		 cd '../unibox'
	fi
	if [ $i == 2 ]; then
	 cd '../administration'
	fi

	path=$(pwd | rev | cut -d'/' -f1,2 | rev )
	branch=$(git branch | grep ^\* | cut -c 3-)
	if [ $branch != 'master' ];then
        	echo  '"'$path'" is NOT switched to branch "master".'
  		echo 'Instead switched to "'$branch'"'
  	    	exit
	fi
	comp=$(git status | grep composer.lock | wc -l)
	if [ $comp -ne 0 ]; then
		echo '"'$path'" changes in "composer.lock".'
		exit
	fi
done

for i in {0..2}
do
        if [ $i == 0 ]; then
                 cd '../chytryhonza'
        fi
        if [ $i == 1 ]; then
                 cd '../unibox'
        fi
        if [ $i == 2 ]; then
         	 cd '../administration'
        fi


	path=$(pwd | rev | cut -d'/' -f1,2 | rev )
	echo '==================================================UPDATING: '$path
	git pull
	echo '--------------------------------------------------COMPOSER: '$path
	composer install
done

