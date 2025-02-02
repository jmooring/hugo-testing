# Hugo GitHub Issue #13332

Details: <https://github.com/gohugoio/hugo/issues/13332>

Description: BaseURL subdir repeated with RSS output format and render hooks enabled

## Instructions

Clone this branch of the repository and build the site.

```text
git clone --single-branch -b hugo-github-issue-13332 https://github.com/jmooring/hugo-testing hugo-github-issue-13332
cd hugo-github-issue-13332
rm -rf public/ && hugo && cat public/index.xml
```
