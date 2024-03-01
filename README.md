# Hugo GitHub Issue #12174

Details: <https://github.com/gohugoio/hugo/issues/12174#issuecomment-1971497698>

Description: Hugo is now not using layouts/_default/author.terms.html for /authors/ anymore.

## Instructions

Clone this branch of the repository and build the site.

```text
git clone --single-branch -b hugo-github-issue-12174 https://github.com/jmooring/hugo-testing hugo-github-issue-12174
cd hugo-github-issue-12174
rm -rf public && hugo && cat public/authors/index.html
```
