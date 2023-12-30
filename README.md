# Hugo GitHub Issue #10665

Details: <https://github.com/gohugoio/hugo/issues/10665>

Description: opengraph template: Support relative paths in `images` front-matter.

## Instructions

Clone this branch of the repository and build the site.

```text
git clone --single-branch -b hugo-github-issue-10665 https://github.com/jmooring/hugo-testing hugo-github-issue-10665
cd hugo-github-issue-10665
rm -rf public && hugo && grep "og:image" public/posts/post-1/index.html
```
