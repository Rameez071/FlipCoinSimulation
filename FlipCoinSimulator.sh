#!/bin/bash -x

#Fliping Coin using random function
toss=$(( RANDOM%2 ))
if [ $toss -eq 1 ]
then
        echo "Head" $Head

else
	echo "Tail" $Tail

fi

