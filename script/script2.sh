#!/bin/bash

for file in $(ls $1)
do
    echo -e "$1$file:"
    for info in $(cat $1$file)
    do
        name=$(echo $info | cut -d ":" -f1 )
        age=$(echo $info | cut -d ":" -f2)
        email=$(echo $info | cut -d ":" -f3)
        if [[ $email =~ .spbstu.ru$ ]]
        then
             echo -e "Имя пользователя:$name"
             echo -e "Возраст пользователя:$age"
             echo -e "Почта пользователя:$email"
        fi
    done
done
