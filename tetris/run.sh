#!/bin/bash

COMMAND="NONE"

while true; do

    #echo $COMMAND

    clang++ main.cpp -std=c++1z -Wno-gnu-string-literal-operator-template -D $COMMAND -o tetris

    echo -n ""

    ./tetris

    CHARINPUT="0"

    echo -n "Waiting for input..."

    read -s -t 2 -n 1 CHARINPUT

    echo -n " Done! (input: $CHARINPUT)"

    COMMAND="NONE"

    [ "$CHARINPUT" == "a" ] && COMMAND="LEFT"
    [ "$CHARINPUT" == "d" ] && COMMAND="RIGHT"
    [ "$CHARINPUT" == "q" ] && COMMAND="LROT"
    [ "$CHARINPUT" == "e" ] && COMMAND="RROT"

done
