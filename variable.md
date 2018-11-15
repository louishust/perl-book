# 变量类型

源码文件：[variable.pl](src/variable.pl)

perl主要有三类变量类型: `scalars`, `arrays`和`hashes`.

## Scalars

Scalars表示单值类型

```perl
my $animal = "camel";
my $answer = 42;
```


Scalar变量的值可以是字符串，整形，浮点数，perl会在需要时自动进行类型
转换。声明变量不需要定义变量类型，第一次声明时，必须使用`my`关键字。


Scalar变量的值可以有多种使用方式:

```perl
print $animal;
print "The animal is $animal\n";
print "The square of $answer is ", $answer * $answer, "\n";
```

Perl里面有一些**神奇的预定义变量**，可以通过`perldoc perlvar`进行具体查看。

`$_`是默认输入变量，以下语句等价：

```perl
while (<>) {...}    # equivalent only in while!
while (defined($_ = <>)) {...}

/^Subject:/;
$_ =~ /^Subject:/;

tr/a-z/A-Z/;
$_ =~ tr/a-z/A-Z/;

chomp;
chomp($_);

print;
print $_;
```

## Arrays

Array表示一组数据。

```perl
my @animals = ("camel", "llama", "owl");
my @numbers = (23, 42, 69);
my @mixed   = ("camel", 42, 1.23);
```

数组以0小标开始。

```perl
print $animals[0];              # prints "camel"
print $animals[1];              # prints "llama"
```

可以通过`$#array`获取数组的最后一个元素的下标。

```perl
print $mixed[$#mixed];
```

通过`@array`获取数组的长度, `@array`根据**上下文决定自己的值**，如果是简单的
print，则会输出数组的数据，如果存在运算，则为数组的长度。

```perl
print @animals, "\n";
print @animals+0 , "\n";
if (@animals == 3) { print "number of animals=3\n";}
```

通过`@array[start..end]`或者`@array[index,index...]`构造新的array。


```perl
print @animals[0,1], "\n";                 # gives ("camel", "llama");
print @animals[1,0], "\n";                 # gives ("camel", "llama");
print @animals[0..2], "\n";                # gives ("camel", "llama", "owl");
print @animals[1..$#animals], "\n";        # gives all except the first element
```

通过`sort`和`reverse`函数可以对数组进行排序


```perl
my @sorted    = sort @animals;
my @backwards = reverse @numbers;
```

**特殊数组**

* `@ARGV`: 脚本命令行接收的参数数组。
* `@_`: 函数的参数数组。


## Hashes

Hash代表键值对。


```perl
my %fruit_color = ("apple", "red", "banana", "yellow");
my %fruit_color = (
    apple  => "red",
    banana => "yellow",
);
```

使用`=>`的方式更直观。


获取元素:

```perl
$fruit_color{"apple"};
```

可以通过`keys()`和`values()`获取键和值的列表。

```perl
my @fruits = keys %fruit_colors;
my @colors = values %fruit_colors;
```

## Reference

引用属于scalar变量，引用可以指向任何数据类型。

使用'[]'，表示对匿名的Array进行引用。

```perl
$arrayref = [1, 2, ['a', 'b', 'c']];
```

使用'{}'，表示对匿名的Hash进行引用。

```perl
$hashref = {
   'Adam'  => 'Eve',
   'Clyde' => 'Bonnie',
};
```

混合引用：

```perl
$mixref = {
   'Adam'  => [1, 2],
   'Clyde' => 'Bonnie',
};

```

**特殊变量**

* `ENV`: 包含了环境变量的hash

```perl
print %ENV, "\n";
```

## 变量作用域

变量可以去掉`my`关键字。


```perl
$var = "value";
```

没有`my`的变量作用于为**global**, 带有`my`的变量作用于为`lexically scoped`


```perl
my $x = "foo";
my $some_condition = 1;
if ($some_condition) {
    my $y = "bar";
    print $x;           # prints "foo"
    print $y;           # prints "bar"
}
print $x;               # prints "foo"
print $y;               # prints nothing; $y has fallen out of scope
```
