# Hugo GitHub Issue #9493

Details: <https://github.com/gohugoio/hugo/issues/9493>

Description: LiveReload injection snippet for custom output type is hardcoded to 127.0.0.1

## Instructions

Clone this branch of the repository and build the site.

```bash
git clone --single-branch -b hugo-github-issue-9493 https://github.com/jmooring/hugo-testing hugo-github-issue-9493
cd hugo-github-issue-9493
hugo server --renderToDisk

Ctrl+C

grep livereload public/index.html
grep livereload public/potrait.html
```
