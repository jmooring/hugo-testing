+++
title = 'Hugo GitHub Issue #10515 (de)'
date = 2022-12-09T14:40:30-08:00
draft = false
details = 'https://github.com/gohugoio/hugo/issues/10515'
description = "sitemap.xml as a plain text - bug in declaration in urlset"
+++

Check both of these URLS:

- <http://localhost:1313/sitemap.xml>
- <http://localhost:1313/en/sitemap.xml>

You should see this at the top:

> This XML file does not appear to have any style information associated with it. The document tree is shown below.

Followed by well-structured XML.

---
