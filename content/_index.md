+++
title = 'Home'
date = 2026-09-02T20:58:40-07:00
draft = false
details = 'https://github.com/gohugoio/hugo/issues/15279'
description = "Markdown-enabled shortcodes do not de-indent their inner Markdown before rendering"
+++

1. First item

    {{< tabs >}}

    {{% tab %}}

    ~~~bash
    echo hello
    ~~~

    {{% /tab %}}
    
    {{< /tabs >}}

2. Second item
