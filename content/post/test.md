+++
title = "Test"
date = 2020-06-27T15:38:14-04:00
draft = false
summary = "Code fences with line numbers, word wrap, and restricted width."
+++

Each of the example code blocks contains three lines:

- one two three four five six seven eight nine ten eleven twelve thirteen fourteen fifteen sixteen seventeen
- aaa bbb ccc ddd eee fff ggg hhh iii jjj kkk lll mmm nnn ooo ppp qqq rrr sss ttt uuu vvv www xxx yyy zzz
- 0123456789012345678901234567890123456789012345678901234567890123456789

The first code block is configured with `linenos=inline`. It is styled to be 384px wide, and each line will wrap. The CSS is contained in the `<head>` of `layouts/_default/baseof.html`.


```txt {linenos=inline}
one two three four five six seven eight nine ten eleven twelve thirteen fourteen fifteen sixteen seventeen
aaa bbb ccc ddd eee fff ggg hhh iii jjj kkk lll mmm nnn ooo ppp qqq rrr sss ttt uuu vvv www xxx yyy zzz
0123456789012345678901234567890123456789012345678901234567890123456789
```

The second code block is configured with `linenos=table`. As you can see, _the line numbers are out-of-sync with their corresponding lines of code_. This is a limitation of the [Chroma](https://github.com/alecthomas/chroma) syntax highlighter that Hugo uses to generate the HTML. The purpose of the `linenos=table` setting is to make it easier to select and copy code from the browser.

```txt {linenos=table}
one two three four five six seven eight nine ten eleven twelve thirteen fourteen fifteen sixteen seventeen
aaa bbb ccc ddd eee fff ggg hhh iii jjj kkk lll mmm nnn ooo ppp qqq rrr sss ttt uuu vvv www xxx yyy zzz
0123456789012345678901234567890123456789012345678901234567890123456789
```
