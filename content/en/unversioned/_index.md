+++
title = 'Home'
date = 2026-01-06T08:18:55-08:00
draft = false
details = 'https://discourse.gohugo.io/t/56516'
description = "Is there an example of how to use the new multidimensional content model?"
+++

This is an example of the multidimensional content model introduced in Hugo [v0.153.0][]. This framework enables content to be organized across multiple languages, roles, and versions simultaneously. This example uses two dimensions:

- Version: a software documentation site where pages are added, modified, or removed with each release.
- Language: English and German, where Hugo fills in each missing German translation with the English page. Each of these pages displays a notice.

Each language and version has its own content directory, such as `content/de/v0.2.0`, containing only the pages added, modified, or translated for that version. The mounts in `hugo.toml` combine these directories:

- The mounts are listed from the newest version to the oldest. When more than one mount provides the same page to the same site, Hugo uses the page from the first mount, so each version uses the newest copy of each page.
- Within each version, the German mount comes before the English mount. The German mounts apply to the German site only, while the English mounts apply to every language. When there is no German file for a page, Hugo publishes the English file to the German site.

The German translation is incomplete:

- /posts/post-2 is not translated
- /docs/functions/variance is translated for v0.2.0, but not for the changes in v0.3.0
- /docs/functions/standard-deviation is not translated
- /docs/functions/median is not translated

Version history:

v0.1.0

- Added /docs/functions/average
- Added /docs/functions/mean

v0.2.0

- Added /docs/functions/variance
- Modified /docs/functions/mean

v0.3.0

- Added /docs/functions/standard-deviation
- Modified /docs/functions/variance
- Removed /docs/functions/average

v0.4.0 (`defaultContentVersion`)

- Added /docs/functions/median

[v0.153.0]: https://github.com/gohugoio/hugo/releases/tag/v0.153.0
