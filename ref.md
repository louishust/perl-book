# Reference

reference是一种特殊类型，也属于`scalar`类型, 类似于C中的`&`取地址。


## 定义引用


* 通过在变量、函数、数值前加`\\`构造

```perl
$scalarref = \$foo;
$arrayref  = \@ARGV;
$hashref   = \%ENV;
$coderef   = \&handler;
$globref   = \*foo;
```

* 使用`[]`创建匿名数组的引用

```perl
$arrayref = [1, 2, ['a', 'b', 'c']];
```

* 创建一个元素为引用类型的数组

```perl
@list = (\$a, \@b, \%c);
@list = \($a, @b, %c);      # same thing!
```

* 使用`{}`创建匿名hash的引用

```perl
$hashref = {
    'Adam'  => 'Eve',
    'Clyde' => 'Bonnie',
};
```

* 对匿名函数的引用

```perl
$coderef = sub { print "Boink!\n" };
```

* 对象构造函数返回引用

```perl
$objref = new Doggie( Tail => 'short', Ears => 'long' );
```

## 使用引用

* 原本使用变量名的地方，使用`$ref`替代

```perl
$bar = $$scalarref;
push(@$arrayref, $filename);
$$arrayref[0] = "January";
$$hashref{"KEY"} = "VALUE";
&$coderef(1,2,3);
print $globref "output\n";
```

* 原本使用变量名的地方，使用`{$ref}`替代

```perl
$bar = ${$scalarref};
push(@{$arrayref}, $filename);
${$arrayref}[0] = "January";
${$hashref}{"KEY"} = "VALUE";
&{$coderef}(1,2,3);
$globref->print("output\n");  # iff IO::Handle is loaded
```

* 数组,hash和函数还有更简单的方法

```perl
$arrayref->[0] = "January";   # Array element
$hashref->{"KEY"} = "VALUE";  # Hash element
$coderef->(1,2,3);            # Subroutine call
```
