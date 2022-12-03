#!/bin/bash

if [$# != 2]
then
    echo "usage tar_file.sh <tgz_dir> <dest_log_dir>"
fi

tgz_dir=$1
dest_dir=$2

# 创建中间目录
temp_dir=$1/temp
if [ -e $temp_dir ]
then
    rm -rf $temp_dir
    mkdir $temp_dir
else
    mkdir $temp_dir
fi 

# 解压第一层压缩包
files=`ls $tgz_dir/*.tgz`
for filename in $files
do
    echo $filename
    tar -zxf $filename -C $temp_dir
done

# 解压第二层压缩包
files=`ls $temp_dir/*.tgz`
for filename in $files
do
    echo $filename
    tar -zxf $filename -C $dest_dir
done

# 筛选日志
grep "DealGetAchievementReq: CurLevel" $dest_dir/*.log >> $tgz_dir/grep.log
cat $tgz_dir/grep.log | awk '{print $2,$3,$4,$8,$11}' | sed 's/^.*RUN]//g' | sed 's/\.\.\..*$//g' > $tgz_dir/sed.log  