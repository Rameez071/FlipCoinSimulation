#!/bin/bash -x

#variables
Head=1
Tail=1
count=1

#Loop with Simulator
while (( $count > 0 ))
do

    toss=$(( RANDOM%2 ))
    if [ $toss -eq 1 ]
    then
        echo "Head" $Head
        (( Head ++ ))
    else
        echo "Tail" $Tail
        (( Tail++ ))
    fi
done
