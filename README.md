# notify-when-process-ends

notify-when-process-ends是一个小脚本，可以监测在服务器上的任务是否结束，结束时会通过url通知。


![GitHub](https://img.shields.io/github/license/yangxnn/notify-when-process-ends)

**关键词**: pid, 任务监测, 通知

## 特点
- 监测任务是否结束，结束则通过url通知


## 使用方法
1. 确定可以接收消息的url，作为`wn.sh`的`url`变量的值
2. 根据需要调整`wn.sh`的`text`变量格式
3. 在`~/.bashrc`中添加命令别名，并`source`
    - `alias wn='sh ${wn.sh文件所在目录}/wn.sh' `
4. 使用如下
```bash
$ nohup sleep 20s &
[1] 5628
$ wn 5628 &
[2] 5629
watch pid:5629
$
```