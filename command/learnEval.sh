#!/usr/bin/env bash
:<<EOF
1,eval后面可以加多个command-line,多个之间用分号隔开。这里的command-line，指的是可以在linux终端上执行的命令
2,eval会对后面的command-line扫描两遍；第一遍扫描时，会把command-line中的变量进行替换（比如用“$”引用的变量），第二遍再执行替换后的command-line
EOF

#功能展示一，变量替换，并执行命令
fileName=test.txt
#作为比对，echo命令只会扫描一遍后面的命令，即把后面命令中的变量进行实际的替换
echo cat $fileName #----输出结果：cat test.txt
#而eval会先进行替换，然后再实际执行这个命令，也就是把文本中内容打印出来
eval cat $fileName #----输出结果：Hello,world!
echo "+++++++++++++++++++"

#功能展示二，利用第一个功能，输出shell的最后一个参数
#  $#代表了shell有几个参数
echo $#
#  利用执行两遍的特性，输出最后一个参数
eval echo $$#

#功能展示三，读取配置文件,注意，这种方式读取配置文件，要求配置文件最后一行是空行
while read KEY VALUE
do
eval "${KEY} ${VALUE}"
done<test2.txt
echo $name
echo $age
echo $sex
