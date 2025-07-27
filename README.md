# Hugo GitHub Issue #13877

Details: <https://github.com/gohugoio/hugo/issues/13877>

Description: Template selection considers last media type  suffix (alphabetically)  instead of first

## Instructions

Clone this branch of the repository and build the site.

```text
git clone --single-branch -b hugo-github-issue-13877 https://github.com/jmooring/hugo-testing hugo-github-issue-13877
cd hugo-github-issue-13877
rm -rf public/ && hugo && tree public/ && cat public/p1/index.b
```
