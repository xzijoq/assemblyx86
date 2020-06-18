#!/bin/bash

if [[ $1 = clean ]]
then
    rm -r \#*
    rm -r *~
    rm -r *.o
    rm -r *.out
elif [[ $1 = git ]]
then
     cd ..
     git add .
     git commit -m "64"
     git push
   
else
     nasm -f elf64 -F stabs $1.asm -o $1.o
     clang -nostdlib -g $1.o -o $1.out
     ./$1.out
fi
