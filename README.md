# Hugo GitHub Issue #11601

Details: <https://github.com/gohugoio/hugo/issues/11601>

Description: Build and Server inconsistency

## Instructions

Clone this branch of the repository and build the site.

```text
git clone --single-branch -b hugo-github-issue-11601 https://github.com/jmooring/hugo-testing hugo-github-issue-11601
cd hugo-github-issue-11601
rm -rf resources/ public/ && hugo
```

Then look at the contents of the public directory:

```text
tree public
```

Then examine the published home page:

```text
grep -A6 "<ul>" public/index.html 
```
