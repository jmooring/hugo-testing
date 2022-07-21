# Hugo Forum Topic #39590

Details: <https://discourse.gohugo.io/t/39590>

Description: Export to markdown with shortcodes

## Instructions

Clone this branch of the repository and build the site.

```bash
git clone --single-branch -b hugo-forum-topic-39590 https://github.com/jmooring/hugo-testing hugo-forum-topic-39590
cd hugo-forum-topic-39590
rm -rf public/ && hugo && cat public/post/test/index.md
```

This will throw an error until [#7297](https://github.com/gohugoio/hugo/issues/7297) has been implemented.
