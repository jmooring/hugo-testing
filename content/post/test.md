+++
title = "Test"
date = 2021-05-13T09:29:08-07:00
draft = false
+++

{{< pass >}}
This text is rendered within a `<div class="pass">`. The class "pass" will appear in hugo_stats.json, as expected.
{{< /pass >}}

{{< fail >}}
This text is rendered within a `<div class="fail">`. The class "fail" will _not_ appear in hugo_stats.json due to the presence of an apostrophe in the HTML comment.
{{< /fail >}}
