+++
title = 'Hugo GitHub Issue #12792 (en)'
linkTitle = 'Home'
date = 2024-08-23T07:33:45-07:00
draft = false
details = 'https://github.com/gohugoio/hugo/issues/12792'
description = "Unexpected lookup order for shortcode templates"
+++

{{< foo >}}

## Shortcodes

html

1. layouts/_shortcodes/foo.en.html
2. layouts/_shortcodes/foo.en.html.html
3. layouts/_shortcodes/foo.html
4. layouts/_shortcodes/foo.html.html

json

1. layouts/_shortcodes/foo.en.json
2. layouts/_shortcodes/foo.en.json.json
3. layouts/_shortcodes/foo.json
4. layouts/_shortcodes/foo.json.json

## Home page

html

1. layouts/home.en.html
2. layouts/home.en.html.html
3. layouts/home.html
4. layouts/home.html.html

json

1. layouts/home.en.json
2. layouts/home.en.json.json
3. layouts/home.json
4. layouts/home.json.json
