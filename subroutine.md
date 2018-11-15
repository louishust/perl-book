# 子程序

源码文件：[subroutine.pl](src/subroutine.pl)

子程序so easy:

```perl
sub logger {
   my $logmessage = shift;
   open my $logfile, ">>", "my.log" or die "Could not open my.log: $!";
   print $logfile $logmessage;
}
```

使用子程序和内置函数一样。


```perl
logger("We have a logger subroutine!");
```


**shift**是什么？ shift是一个function，用于将数组最前面的元素pop出来。shift的默认参数是`@_`, 即函数的参数列表。

除了shift，还可以使用如下方式, 获取传入的参数。

```perl
my ($logmessage, $priority) = @_;
```

子程序可以拥有返回值：

```perl
sub square {
    my $num = shift;
    my $result = $num * $num;
    return $result;
}

$sq = square(8);
```


For more information: `perldoc perlsub`
