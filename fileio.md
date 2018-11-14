# 文件IO操作

源码文件：[fileio.perl](src/fileio.perl)

## 打开文件

使用`open()`函数，打开文件进行读写。如下所示：

```perl
open(my $in,  "<",  "input.txt")  or die "Can't open input.txt: $!";
open(my $out, ">",  "output.txt") or die "Can't open output.txt: $!";
open(my $log, ">>", "my.log")     or die "Can't open my.log: $!";
```

## 读取文件


使用`<>`操作符进行读取文件, 左值是scalar变量时，一次读取一行，
左值是数组类型时，一次读取整个文件。


```perl
my $line  = <$in>;
my @lines = <$in>;
```

一次读取整个文件，简单粗暴，会消耗大量内存，一般都是每次读取一行。


```perl
while ($<in>) {
  print "Just read in this line: $_";
}
```

## 写入文件

通过`print`函数，可以直接写入文件


```perl
print STDERR "This is your final warning.\n";
print $out $record;
print $log $logmessage;
```

## 关闭文件


```perl
close $in or die "$in: $!";
```

