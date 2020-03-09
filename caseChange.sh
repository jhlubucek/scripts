#!/bin/bash

case="$1"
x="$2"

if [ "$case" == "sc" ]; then
echo "$x" | sed -e 's/\(_.\)/\U\1/g' |sed -e 's/\_//g'
exit 0
fi

if [ "$case" == "lu" ]; then
echo "$x" | tr '[:lower:]' '[:upper:]'   
exit 0
fi

if [ "$case" == "ul" ]; then
echo "$x" | tr '[:upper:]' '[:lower:]'
exit 0
fi


echo "sc snake to cammel"
echo "lu lover to upper"
echo "ul upper to lower"

exit 1
