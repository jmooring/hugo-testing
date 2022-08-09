+++
title = 'Hugo Forum Topic #39912'
date = 2022-08-09T14:23:01-07:00
draft = false
details = 'https://discourse.gohugo.io/t/39912'
description = "Is there a relatively easy way to implement @mentions?"
+++

## Normal links

[Google](https://google.com)

[Hugo](https://gohugo.io "Hugo rocks!")

## Web mentions using the link render hook

[](@bsmith)

[](@jdoe)

[](@tjones)

## Web mentions using search/replace

@bsmith is at the beginning of the first sentence. @jdoe is at the beginning of the second sentence.

Now @tjones is in the middle of a line.

Now it is at the end of the line @tjones.

And here's an email address none@example.com in the middle of a line.
