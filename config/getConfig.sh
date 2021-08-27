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

#方法三,利用source命令,并且展示了如何获取项目中指定的配置文件，这样的方式通用于任何环境。因为很多时候并不会在当前目录运行脚本
source $PWD/../config/config.properties
echo $ID
echo $IP
echo $Name


#获取配置文件，往往有个路径问题，因为脚本的执行往往不是在当前目录执行，那根据相对路径读取配置文件就有问题。
#用绝对路径直接读取配置文件也会有问题，这样有局限性，换个环境绝对路径就有可能不一样了。
#可以采用这种办法：先在脚本中获取脚本所在目录，然后再根据相对路径获取配置文件
shellAbsDir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
configPath=$shellAbsDir/../config/config.properties
cat $configPath