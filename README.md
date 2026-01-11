# Hugo Docs GitHub Issue #3341

Details: <https://github.com/gohugoio/hugoDocs/pull/3341>

Description: Fix description of disableDefaultLanguageRedirect

## Instructions

Clone this branch of the repository and build the site.

```text
git clone --single-branch -b hugo-docs-github-issue-3341 https://github.com/jmooring/hugo-testing hugo-docs-github-issue-3341
cd hugo-docs-github-issue-3341
rm -rf public/ && HUGO_DISABLEDEFAULTLANGUAGEREDIRECT=false hugo && tree public
rm -rf public/ && HUGO_DISABLEDEFAULTLANGUAGEREDIRECT=true hugo && tree public
```
