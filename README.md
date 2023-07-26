# Hugo Forum Topic #45433

Details: <https://discourse.gohugo.io/t/45433>

Description: General guidance using Hugo to generate a large amount of content from database/api

## Instructions

Clone this branch of the repository and build the site.

```text
git clone --single-branch -b hugo-forum-topic-45433 https://github.com/jmooring/hugo-testing hugo-forum-topic-45433
cd hugo-forum-topic-45433
rm -rf prebuild/public && hugo -s prebuild && hugo server
```

The content is derived from:
<https://www.veriphor.com/shared/data/books.json>
