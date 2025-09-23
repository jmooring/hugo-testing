# Hugo GitHub Issue #13998

Details: <https://github.com/gohugoio/hugo/issues/13998>

Description: bug: multilingual content resources are built even if the page is a draft

## Instructions

Clone this branch of the repository and build the site.

```text
git clone --single-branch -b hugo-github-issue-13998 https://github.com/jmooring/hugo-testing hugo-github-issue-13998
cd hugo-github-issue-13998
rm -rf public/ && hugo && tree public
```
