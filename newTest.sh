#!/bin/bash
admin=$1
cept=$2

if [ "$admin" == "b" -o  "$admin" == "a" ]; then

echo "finn num:"
read var1

echo "page nam (cz):"
read var2

echo "test name admin (without .php):"
read var3

echo "page name (without .php):"
read var4

echo "page URL (withot out "/"):"
read var5

var6=$(echo "$var3" | sed "s/Admin/Broker/g" | sed "s/admin/broker/g")
echo "$var6"

 echo "creating:"
 echo "    -$var3".php
 
 y=$(echo "$x" | grep "Cept" | wc -l)
 if [ "$y" -eq 1 ]; then
	cp /c/Users/jan.hlubucek/Desktop/DEV-MY/scripts/testTemplateCept.php /c/Users/jan.hlubucek/Desktop/DEV-MY/Automats/ccs-master/tests/acceptance/"$var3".php
 else
	cp /c/Users/jan.hlubucek/Desktop/DEV-MY/scripts/testTemplateCest.php /c/Users/jan.hlubucek/Desktop/DEV-MY/Automats/ccs-master/tests/acceptance/"$var3".php
 fi
 echo "    -$var4".php
 cp /c/Users/jan.hlubucek/Desktop/DEV-MY/scripts/pageTemplate.php /c/Users/jan.hlubucek/Desktop/DEV-MY/Automats/ccs-master/tests/_support/Page/"$var4".php

sed -i "s/NUM/$var1/" /c/Users/jan.hlubucek/Desktop/DEV-MY/Automats/ccs-master/tests/acceptance/"$var3".php
sed -i "s/PGNAME/$var2/" /c/Users/jan.hlubucek/Desktop/DEV-MY/Automats/ccs-master/tests/acceptance/"$var3".php
sed -i "s/PGNM/$var4/g" /c/Users/jan.hlubucek/Desktop/DEV-MY/Automats/ccs-master/tests/acceptance/"$var3".php
sed -i "s/TESTNM/$var3/g" /c/Users/jan.hlubucek/Desktop/DEV-MY/Automats/ccs-master/tests/acceptance/"$var3".php
sed -i "s/CLASSNM/$var4/g" /c/Users/jan.hlubucek/Desktop/DEV-MY/Automats/ccs-master/tests/_support/Page/"$var4".php
sed -i "s/PGURL/$var5/g" /c/Users/jan.hlubucek/Desktop/DEV-MY/Automats/ccs-master/tests/_support/Page/"$var4".php

fi

if [ "$1" == "b" ]; then
	echo "    -$var6".php
	cp	/c/Users/jan.hlubucek/Desktop/DEV-MY/Automats/ccs-master/tests/acceptance/"$var3".php /c/Users/jan.hlubucek/Desktop/DEV-MY/Automats/ccs-master/tests/acceptance/"$var6".php
	sed -i "s/Admin/Broker/g" /c/Users/jan.hlubucek/Desktop/DEV-MY/Automats/ccs-master/tests/acceptance/"$var6".php
	sed -i "s/admin/broker/g" /c/Users/jan.hlubucek/Desktop/DEV-MY/Automats/ccs-master/tests/acceptance/"$var6".php
fi