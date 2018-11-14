# 正则表达式

源码文件：[regex.perl](src/regex.perl)

## 简单匹配


```perl
if (/foo/)       { ... }  # true if $_ contains "foo"
if ($a =~ /foo/) { ... }  # true if $a contains "foo"
```

## 简单替换

```perl
s/foo/bar/;               # replaces foo with bar in $_
$a =~ s/foo/bar/;         # replaces foo with bar in $a
$a =~ s/foo/bar/g;        # replaces ALL INSTANCES of foo with bar
                          # in $a
```

## 复杂的正则表达式

一些特殊字符，在正则表达式中的意义：

```bash
.                   a single character
\s                  a whitespace character (space, tab, newline,
                    ...)
\S                  non-whitespace character
\d                  a digit (0-9)
\D                  a non-digit
\w                  a word character (a-z, A-Z, 0-9, _)
\W                  a non-word character
[aeiou]             matches a single character in the given set
[^aeiou]            matches a single character outside the given
                    set
(foo|bar|baz)       matches any of the alternatives specified

^                   start of string
$                   end of string
```

匹配次数：

```bash
*                   zero or more of the previous thing
+                   one or more of the previous thing
?                   zero or one of the previous thing
{3}                 matches exactly 3 of the previous thing
{3,6}               matches between 3 and 6 of the previous thing
{3,}                matches 3 or more of the previous thing
```

## 简单示例


```
/^\d+/              string starts with one or more digits
/^$/                nothing in the string (start and end are
                    adjacent)
/(\d\s){3}/         three digits, each followed by a whitespace
                    character (eg "3 4 5 ")
/(a.)+/             matches a string in which every odd-numbered
                    letter is a (eg "abacadaf")
```


```perl
while (<>) {
    next if /^$/;
    print;
}
```
从标准输入读取，如果是空则跳过，非空则打印。


## read more

```bash
$ perldoc perlrequick
$ perldoc perlretut
```
