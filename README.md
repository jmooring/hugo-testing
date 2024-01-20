# Hugo GitHub Issue #11654

Details: <https://github.com/gohugoio/hugo/issues/11654>

Description: Don't duplicate page resource output per output format path

## Instructions

Clone this branch of the repository and build the site.

```text
git clone --single-branch -b hugo-github-issue-11654 https://github.com/jmooring/hugo-testing hugo-github-issue-11654
cd hugo-github-issue-11654
rm -rf public/ && hugo && tree public
cat public/amp/posts/post-1/index.html | grep data.json
```
