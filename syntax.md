# 基础语法

源码文件：[syntax.pl](src/syntax.pl)
<!-- vim-markdown-toc GFM -->

* [语句](#语句)
* [注释](#注释)
* [空格](#空格)
* [常量字符串](#常量字符串)
* [函数](#函数)

<!-- vim-markdown-toc -->

## 语句

Perl语句以`;`作为结束符。

```perl
print "Hello World";
```

## 注释

注释以`#`开头, 到行尾有效。

```perl
# This is a comment
```

## 空格

非字符串中的空格无意义。

```perl
print
         "Hello, world"
         ;
```

## 常量字符串

字符串常量可以使用`"`或`'`进行包含。


```perl
print "Hello, world";
print 'Hello, world';
```

## 函数

函数可以使用括号将参数包含起来，也可以省略。

```perl
print("Hello, world\n");
print "Hello, world\n";
```
