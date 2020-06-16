#!/bin/bash
if [[ $1 = clean ]]
then
    echo cleaning
    rm -r *.o
    rm -r *.out
    rm -r *.lst
    rm -r \#*
    rm -r *~
elif [[ $1 = git ]]
then
    git add .
    git commit -m nOnew
    git push origin master
else
    echo running
    nasm -f elf64 $1.asm -o $1.o
    ld $1.o -o $1.out
    ./$1.out
fi
