# 如何调试

<!-- vim-markdown-toc GFM -->

* [启动debuger](#启动debuger)
* [常用调试命令](#常用调试命令)
* [more read](#more-read)

<!-- vim-markdown-toc -->

## 启动debuger


```bash
$ perl -d program_name 调试普通程序
$ perl -dt threaded_program_name 调试多线程程序
```


## 常用调试命令

perl的调试命令和gdb的基本一致。

* h [command]: 打印帮助信息
* p expr : 打印表达式
* V [pkg [vars]]: 打印package中的variables
```perl
V DB filename line
```
* X [vars]: 等价于`V currentpackage [vars]`.
* T : 打印堆栈
* s : 单步调试
* n : next
* r : 类似于gdb的`finish`, 返回上一层
* c : continue
* l : list代码
* b [line] [condition] : 设置文件断点
* b subname : 设置函数断点
* disable [file]:[line] : 禁用断点
* enable [file]:[line] : 启用断点
* B [line] : 删除某行的断点
* B * :删除所有断点

## more read

`perldoc perldebug`

