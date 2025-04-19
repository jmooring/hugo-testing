+++
title = 'Hugo GitHub Issue #13541'
linkTitle = 'Home'
date = 2025-04-19T10:48:03-07:00
draft = false
details = 'https://github.com/gohugoio/hugo/issues/13541'
description = "Reimplement and simplify Hugo's template system"
+++

## Order in which they are called

### single page with layout = 'mylayout'

mylayout.en.html
mylayout.en.html.html
mylayout.all.en.html
mylayout.all.en.html.html
mylayout.single.en.html
mylayout.single.en.html.html
mylayout.html
mylayout.html.html
mylayout.all.html
mylayout.all.html.html
mylayout.single.html
mylayout.single.html.html
single.en.html
single.en.html.html
single.mylayout.en.html
single.mylayout.en.html.html
all.en.html
all.en.html.html
single.html
single.html.html
single.mylayout.html
single.mylayout.html.html
all.html
all.html.html
all.mylayout.html
all.mylayout.html.html



## All layouts

all.en.html
all.en.html.html
all.html
all.html.html
all.mylayout.en.html
all.mylayout.en.html.html
all.mylayout.html
all.mylayout.html.html
mylayout.all.en.html
mylayout.all.en.html.html
mylayout.all.html
mylayout.all.html.html
mylayout.en.html
mylayout.en.html.html
mylayout.html
mylayout.html.html
mylayout.single.en.html
mylayout.single.en.html.html
mylayout.single.html
mylayout.single.html.html
single.en.html
single.en.html.html
single.html
single.html.html
single.mylayout.en.html
single.mylayout.en.html.html
single.mylayout.html
single.mylayout.html.html
home.en.html
home.en.html.html
home.html
home.html.html
list.en.html
list.en.html.html
list.html
list.html.html
section.en.html
section.en.html.html
section.html
section.html.html
taxonomy.en.html
taxonomy.en.html.html
taxonomy.html
taxonomy.html.html
term.en.html
term.en.html.html
term.html
term.html..html
