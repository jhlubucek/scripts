#/bin/bash
x=$1;

#//*[@id="datefilter"]
#x=$(echo $x | sed 's/'(Locator::find(/\/\//g')


echo $x | sed 's/(Locator::find(/\/\//g' | sed 's/, \[/\[@/g' | sed 's/ => self::/=\"/g'| sed 's/\]))/\"\]/g';
