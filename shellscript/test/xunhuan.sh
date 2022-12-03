#!/usr/bin/bash
# 学习循环结构

# for 循环

# for index in A B C D E F
# do
#     echo $index
# done

# list="A B C D E F"
# list=$list" G"

# for index in $list
# do
#     echo $index
# done


# for dir in ../*
# do
#     echo $dir
# done

for (( i=1; i<=3; i++ ))
do
    echo "Starting loop $i:"
    for (( j=1; j<=3; j++ ))
    do
        echo -e "\tInside loop: $j"
    done
done

var1=5

while [ $var1 -ge 0 ]
do
    echo "Outer loop: $var1"
    for (( var2=1; var2<3; var2++ ))
    do
        var3=$[ $var1 * $var2 ]
        echo -e "\t Inner loop: $var1 * $var2 = $var3"
    done
    var1=$[ $var1 - 1 ]
done
