#!/usr/bin/bash
# 参数示例

# if [ -n "$1" ]
# then
#     factorial=1

#     for (( number=1; number<=$1; number++ ))
#     do
#         factorial=$[ $factorial * $number ]
#     done

#     echo The factorial of $1 is $factorial
# else
#     echo args is null
# fi

# echo
# count=1
# for param in "$*"
# do
#     echo "\$* Parameter #$count = $param"
#     count=$[ $count+1 ]
# done

# echo
# count=1
# for param in "$@"
# do
#     echo "\$* Parameter #$count = $param"
#     count=$[ $count+1 ]
# done

# echo
# while [ -n "$1" ]
# do
#     case $1 in
#         -a) echo "Found The -a1 option" ;;
#         -a) echo "Found The -a2 option" ;;
#         -b) echo "Found The -b option" ;;
#         -c) echo "Found The -c option" ;;
#          *) echo "$1 is not an option" ;;
#     esac
#     shift
# done

set -- $(getopt -a ab:cd "$@")
echo
while [ -n "$1" ]
do
    case $1 in
        -a) echo "Found the -a option" ;;
        -b) param="$2"
            echo "Found the -b option, with parameter value $param"
            shift;;
        -c) echo "Found the -c option" ;;
        --) shift
            break ;;
         *) echo "$1 is not an option" ;;
    esac
    shift
done

count=1
for param in "$@"
do
    echo "Parameter #$count: $param"
    count=$[ $count+1 ]
done

for (( i=1; i<=$#; i++ ))
do
    echo "Parameter #$i: ${!i}"
done
