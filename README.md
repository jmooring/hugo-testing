# Hugo GitHub Issue #5161

Details: <https://github.com/gohugoio/hugo/issues/5161>

Description: With defaultContentLanguageInSubdir: true, a 404.html file should be created at the root

## Instructions

Clone this branch of the repository and build the site.

```text
git clone --single-branch -b hugo-github-issue-5161 https://github.com/jmooring/hugo-testing hugo-github-issue-5161
cd hugo-github-issue-5161
rm -rf public/ && hugo && tree public
```
