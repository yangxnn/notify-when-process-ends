#!/bin/bash

###
 # @Author       : yangxing(yangxnn@outlook.com)
 # @Date         : 2022-05-07 20:52:24
 # @LastEditors  : yangxing(yangxnn@outlook.com)
 # @LastEditTime : 2022-05-07 21:01:38
 # @FilePath     : /notify-when-process-ends/wn.sh
 # @Description  : 
 # 
 # Copyright (c) 2022 by yangxnn@outlook.com, All Rights Reserved. 
### 

# watch and notify

pid=$!
if [[ $# != 0 && $1 != '&' ]];then
    pid=$1
fi

echo "watch pid:$pid"
path=$(pwdx $pid)
scp=$(ps -aux | awk '{if($2=="'$pid'"){for(i=1;i<=10;i++){$i=""};print $0}}')
url=""      # 待添加

while [[ $(pwdx ${pid}) != "" ]]
do 
    sleep 10s
done

$text="{path:$path, scp:$scp}"
curl "$curl" -X POST -d "$text"
