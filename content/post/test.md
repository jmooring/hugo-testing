+++
title = "Test"
date = 2020-08-27T12:09:33-04:00
draft = false
+++

The source for this page calls a shortcode "foo", which accepts a single positional parameter, an integer.

The "foo" shortcode calls the "mul-7" partial, passing the received value.

The "mul-7" partial multiplies the received value by 7, then calls the "div-21" partial, passing the new value.

The "div-21" partial divides the received value by 21, then returns the new value to the "mul-7" partial.

The "mul-7" partial then returns the value to the "foo" shortcode.

So, if we call `{{</* foo 6 */>}}`, we should see the number 2 below.

Answer: {{< foo 6 >}}
