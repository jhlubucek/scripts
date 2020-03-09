#!/bin/bash
echo "========TEST========="
cat /c/Users/jan.hlubucek/Desktop/DEV-MY/Automats/ccs-master/tests/_envs/test.yml | grep 'ccs'
echo "========SKF========="
cat /c/Users/jan.hlubucek/Desktop/DEV-MY/Automats/ccs-master/tests/_envs/pre.skf.yml | grep 'ccs'
echo "========BHOLD========="
cat /c/Users/jan.hlubucek/Desktop/DEV-MY/Automats/ccs-master/tests/_envs/pre.bhold.yml | grep 'ccs'
echo "========DEFAULT========="
cat /c/Users/jan.hlubucek/Desktop/DEV-MY/Automats/ccs-master/codeception.yml | grep 'ccs'