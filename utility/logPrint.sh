#!/usr/bin/env bash
#日志打印函数,接收1个参数，把要打印的日志内容传给该函数
function log()
{
#首先获取当前的时间，精确到秒
nowTime=`date "+%Y-%m-%d %H:%M:%S"`
#添加当前的时间后，打印出日志
echo "$nowTime Info:$1"
}

#通过这种方式直接调用就行
log "ceshi"
