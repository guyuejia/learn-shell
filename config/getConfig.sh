#!/usr/bin/env bash
#该脚本展示了如何读取项目中的配置文件，配置文件必须是key=value的形式

#方法一，利用sed命令
#id=`sed '/^ID=/!d;s/.*=//' config.properties`
#ip=`sed '/^IP=/!d;s/.*=//' config.properties`
#name=`sed '/^Name=/!d;s/.*=//' config.properties`
#echo $id
#echo $ip
#echo $name

#方法二，利用eval命令
while read line;do
    eval "$line"
done < config.properties
echo $ID
echo $IP
echo $Name

#方法三,利用source命令
source config.properties
echo $ID
echo $IP
echo $Name