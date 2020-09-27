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

#to check if head or tail reach 21
    if [ $Head -gt 21 ]
    then
        echo "Head is win"
    break
    elif [ $Tail -gt 21 ]
    then
        echo "Tail is win"
    break

#condition if simulator attend a tie

    elif [ $Head -ge 21 ] && [ $Tail -ge 21 ]
    then
        echo "Match is Tie"

   for((  i=0; ;i++ ))
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
   if [  $(( $Head - $Tail )) == 2 ]
   then
      exit
   fi
   done
   fi

   (( count ++ ))

done

