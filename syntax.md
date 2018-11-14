# 基础语法

源码文件：[syntax.perl](src/syntax.perl)

Perl语句以`;`作为结束符。

```perl
print "Hello World";
```

注释以`#`开头, 到行尾有效。

```perl
# This is a comment
```

非字符串中的空格无意义。

```perl
print
         "Hello, world"
         ;
```

字符串常量可以使用`"`或`'`进行包含。


```perl
print "Hello, world";
print 'Hello, world';
```

函数可以使用括号将参数包含起来，也可以省略。

```perl
print("Hello, world\n");
print "Hello, world\n";
```
