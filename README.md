# Hugo GitHub Issue #13413

Details: <https://github.com/gohugoio/hugo/issues/13413>

Description: Build with --contentDir doesn't build the section listing page

## Instructions

Clone this branch of the repository and build the site.

```text
git clone --single-branch -b hugo-github-issue-13413 https://github.com/jmooring/hugo-testing hugo-github-issue-13413
cd hugo-github-issue-13413
rm -rf public/ && hugo --renderSegments=books && tree public
```
