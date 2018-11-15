# 面向对象

源码文件：[oo.pl](src/oo.pl)

面向对象编程的基础是对象，即class。Perl中将class定义在module中，
一般以`.pm`(perl module)结尾。

## Class

```perl
package File;
```

文件开头使用`package`关键字，表示定义一个class。


一般class通过函数`new`进行实例化。

```perl
my $hostname = File->new(
    path          => '/etc/hostname',
    content       => "foo\n",
    last_mod_time => 1304974868,
);
```

`new`只是普通函数，不过一般默认定义`new`作为constructor.

## new构造函数

如上面所示：使用


```perl
package tt;
sub new {
    my $class = shift;

    my $self = {};
    bless $self, $class;

    return $self;
}

my $t = tt->new();
```
`$class`代表了`tt`类， `$self`定义了一个指向空`hash`的引用，
`bless`函数相当于把`$self`和`$class`绑定，通过`$self`就能找到类的方法。

```perl
package tt;
sub new {
    my $class = shift;

    my $self = {};
    bless $self, $class;

    $self->_initialize();

    return $self;
}

sub _initialize {
  my $self = shift;
  $self->{host} = "127.0.0.1";
  $self->{port} = 3306;
}
```
这个代码片段在之前的基础上更近一步，在`new`构造函数中，调用了初始化函数`_initialize`.
