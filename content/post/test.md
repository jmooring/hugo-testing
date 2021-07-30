+++
title = "Test"
date = 2021-07-30T08:29:08-07:00
draft = false
+++

Code|Opens New Tab|Test
:--|:-:|:-:
`[foo]({{</* relref "foo" */>}})`|false|[foo]({{< relref "foo" >}})
`[foo]({{</* ref "foo" */>}})`|false|[foo]({{< ref "foo" >}})
`[foo]({{%/* relref "foo" */%}})`|false|[foo]({{% relref "foo" %}})
`[foo]({{%/* ref "foo" */%}})`|true|[foo]({{% ref "foo" %}})
`[github](https://github.com)`|true|[github](https://github.com)
`[github](http://github.com)`|true|[github](http://github.com)
