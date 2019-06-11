#!/bin/bash

echo "finn num:"
read var1

echo "page nam (cz):"
read var2

echo "test name admin (without .php):"
read var3

echo "page name (without .php):"
read var4



 echo "creating new template AAA_Admin.php"
 cp /c/Users/jan.hlubucek/Desktop/DEV-MY/scripts/testTemplate.php /c/Users/jan.hlubucek/Desktop/DEV-MY/Automats/ccs-master/tests/acceptance/"$var3".php
 echo "creating new template AAA_page.php"
 cp /c/Users/jan.hlubucek/Desktop/DEV-MY/scripts/pageTemplate.php /c/Users/jan.hlubucek/Desktop/DEV-MY/Automats/ccs-master/tests/_support/Page/"$var4".php


sed -i "s/NUM/$var1/" /c/Users/jan.hlubucek/Desktop/DEV-MY/Automats/ccs-master/tests/acceptance/"$var3".php
sed -i "s/PGNAME/$var2/" /c/Users/jan.hlubucek/Desktop/DEV-MY/Automats/ccs-master/tests/acceptance/"$var3".php
sed -i "s/PGNM/$var4/g" /c/Users/jan.hlubucek/Desktop/DEV-MY/Automats/ccs-master/tests/acceptance/"$var3".php
sed -i "s/CLASSNM/$var4/g" /c/Users/jan.hlubucek/Desktop/DEV-MY/Automats/ccs-master/tests/_support/Page/"$var4".php