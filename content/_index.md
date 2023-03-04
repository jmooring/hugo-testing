+++
title = 'Hugo Forum Topic #3439'
linkTitle = 'Home'
date = 2023-03-04T07:44:59-08:00
draft = false
details = 'https://discourse.gohugo.io/t/3439'
description = "Empty <p> </p> tags generated when using shortcodes"
+++

View source (typically `Ctrl+U`) and you will see that:

1. There are no extraneous paragraph tags
1. The content is not wrapped in a paragraph tag

---

{{% topic "topic1" %}} {{<h2 class="superbold title-txt">}}Paragraph title{{</h2>}}' 'Blabla' {{% /topic %}}
