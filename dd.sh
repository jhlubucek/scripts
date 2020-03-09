#/bin/bash
x=$1;
y=$(echo "$x" | grep "Cest" | wc -l)
echo $x;
echo $y;
