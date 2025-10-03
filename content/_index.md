+++
title = 'Home'
date = 2025-10-02T20:04:24-07:00
draft = false
details = 'https://discourse.gohugo.io/t/56012'
description = "Nested shortcode rendering"
+++

{{< call-out danger "Testing commands and text styling inside callouts" >}}
This is a normal line of text.

This is a line with **some bold text**.

This is a line with *some italic text*.

This is a line with a command {{< command english-command="DragMode" local-command="DragMode">}} and some **bold** and some *italic* text.
{{< /call-out >}}
