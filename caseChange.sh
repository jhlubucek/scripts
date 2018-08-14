#!/bin/bash

echo "$1" | sed -e 's/\(_.\)/\U\1/g' |sed -e 's/\_//g'
