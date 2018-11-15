# Hello World

源码文件：[hello_world.pl](src/hello_world.pl)

## Hello world

```perl
#!/usr/bin/perl
use strict;
use warnings;

print "Hello World!\n";
```

## 运行程序

```bash
$ perl src/hello_world.pl
Hello World!
$ ./src/hello_world.pl
Hello World!
```


## 程序解释

`#!/usr/bin/perl` 表示使用`/usr/bin/perl`进行解析执行.


`use strict;`和`use warnings;`分别进行不同的检查。

`use strict;`遇到问题代码，直接中止程序。

`use warnings;`会报warning，程序可以继续执行。


## 快速入门

```bash
$ perldoc perlintro
```
