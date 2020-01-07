#!/usr/bin/env bash

#方法1.1：按行读取，这要求最后一行必须是空行，否则最后一行的内容无法读取，因为循环是检测到EOF就结束了
while read line
do
    echo $line
done < test.txt
#方法1.2：按行读取，改进了，可以即便是最后一行不是空行，也能读取
while read line || [[ -n ${line} ]];
do
    echo $line
done < test.txt

#方法1.3：按行读取，利用cat命令，不用重定向符
cat test.txt | while read line || [[ -n ${line} ]]
do
    echo $line;
done