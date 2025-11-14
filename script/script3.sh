#!/bin/bash

for file in $(ls $1)
do
    counter=0
    counter1=0
    counterall=0
    counterall1=0
    echo -e "$1$file:"
    for info in $(cat $1$file)
    do
        age=$(echo $info | cut -d ":" -f2)
        if [[ $age -lt 18 ]]
        then
            counter=$(($counter+1))
        fi
        if [[ $age -ge 18 ]]
        then
            counter1=$(($counter1+1))
        fi
    done
     echo -e "Совершеннолетних: $counter"
     echo -e "Несовершеннолетних: $counter1"
done
echo -e "Совершеннолетних: $counterall"
echo -e "Несовершеннолетних: $counterall1"
