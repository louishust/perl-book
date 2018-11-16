# 控制结构

<!-- vim-markdown-toc GFM -->

* [if](#if)
* [unless](#unless)
* [while](#while)
* [for](#for)
* [foreach](#foreach)

<!-- vim-markdown-toc -->



源码文件：[control_flow.pl](src/control_flow.pl)

## if

```perl
if ( condition ) {
   ...
} elsif ( other condition ) {
    ...
} else {
    ...
}

print "Yow!" if $zippy
```

if后置的方式，也需要先判断if。


## unless

```perl
unless ( condition ) {
    ...
}

print "We have no bananas" unless $bananas;
```
unless和`if (!condition)`等价。


unless后置的方式，也需要先判断unless。

## while

```perl
while ( condition ) {
    ...
}
until ( condition ) {
    ...
}

print "LA LA LA\n" while 1;
```

util和`while(!condition)`等价。


后置的方式类似于C中的`do..while()`.

## for

```perl
for ($i = 0; $i <= $max; $i++) {
    ...
}
```


## foreach

```perl
foreach (@array) {
    print "This element is $_\n";
}

print $list[$_] foreach 0 .. $max;

foreach my $key (keys %hash) {
   print "The value of $key is $hash{$key}\n";
}
```
