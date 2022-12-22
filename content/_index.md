+++
title = 'Hugo Forum Topic #42029'
date = 2022-12-22T08:53:00-08:00
draft = false
details = 'https://discourse.gohugo.io/t/42029'
description = "Hugo shortcode questions with named parameters and ="
+++

<!-- Positional parameters -->
{{< myshortcode postionalParam1 postitionalParam1 >}}
{{< myshortcode "postionalParam2" "postitionalParam1" >}}
{{< myshortcode `postionalParam2` `postitionalParam1` >}}

<!-- Named parameters -->
{{< myshortcode namedParam1=foo namedParam2=bar >}}
{{< myshortcode namedParam1="foo" namedParam2="bar" >}}
{{< myshortcode namedParam1=`foo` namedParam2=`bar` >}}

---

<!-- Positional parameters -->
{{< myshortcode 6 7 >}}
{{< myshortcode "6" "7" >}}
{{< myshortcode `6` `7` >}}

<!-- Named parameters -->
{{< myshortcode namedParam1=6 namedParam2=7 >}}
{{< myshortcode namedParam1="6" namedParam2="7" >}}
{{< myshortcode namedParam1=`6` namedParam2=`7` >}}

---

<!-- Positional parameters -->
{{< myshortcode 6.0 7.0 >}}
{{< myshortcode "6.0" "7.0" >}}
{{< myshortcode `6.0` `7.0` >}}

<!-- Named parameters -->
{{< myshortcode namedParam1=6.0 namedParam2=7.0 >}}
{{< myshortcode namedParam1="6.0" namedParam2="7.0" >}}
{{< myshortcode namedParam1=`6.0` namedParam2=`7.0` >}}

---

<!-- Positional parameters -->
{{< myshortcode true false >}}
{{< myshortcode "true" "false" >}}
{{< myshortcode `true` `false` >}}

<!-- Named parameters -->
{{< myshortcode namedParam1=true namedParam2=false >}}
{{< myshortcode namedParam1="true" namedParam2="false" >}}
{{< myshortcode namedParam1=`true` namedParam2=`false` >}}
