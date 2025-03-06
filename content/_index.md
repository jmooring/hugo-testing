+++
title = 'Hugo Forum Topic #53808'
linkTitle = 'Home'
date = 2025-03-05T19:40:23-08:00
draft = false
details = 'https://discourse.gohugo.io/t/53808'
description = "Minimizing header sizes in HTML"
+++

Notes:

1. Markdown headings must follow a continuous sequence. If a page has headings at levels 3 and 5, the heading render hook assumes that there are 3 levels on the page. It's OK to skip a level, but the interval will not be compacted.
1. Determine the site-wide initial content heading level. For example, if level 1 is reserved for page titles, the site-wide intitial content heading level is 2. Set this value in the `cfg` map at the top of the heading render hook.
1. Site configuration cannot consistently manage the table of contents (TOC) start and end levels. This is because the fragment (Markdown) heading level and the rendered heading level differ, and this difference changes based on the number of heading levels on the page.
1. Enable or disable debugging in the `cfg` map at the top of heading render hook.
