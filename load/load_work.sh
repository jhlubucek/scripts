#!/bin/bash
dev=$1


#CD
cd $dev/Automats/ccs-master 
echo "CSS local br------------------"
localbranches

cd $dev/Automats/extranet-master 
echo "EXTRANET local br------------------"
localbranches
