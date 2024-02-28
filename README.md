# Hugo GitHub Issue #12169

Details: <https://github.com/gohugoio/hugo/issues/12169>

Description: Parent .Pages collection incorrect when adjacent sections are named similarly

## Instructions

Clone this branch of the repository and build the site.

```text
git clone --single-branch -b hugo-github-issue-12169 https://github.com/jmooring/hugo-testing hugo-github-issue-12169
cd hugo-github-issue-12169
rm -rf public/ && hugo && cat public/index.html 
```

Expected (v0.122.0)

```text
__|s1|s1-foo|__
```

Actual (v0.123.4)

```text
__|p1|s1|s1-foo|__
```
