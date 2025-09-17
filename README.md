# Hugo GitHub Issue #13987

Details: <https://github.com/gohugoio/hugo/issues/13987>

Description: ESM resolver fails for postcss.config.js files which are located in a theme

## Instructions

Clone this branch of the repository and build the site.

```text
git clone --single-branch -b hugo-github-issue-13987 https://github.com/jmooring/hugo-testing hugo-github-issue-13987
cd hugo-github-issue-13987
hugo mod get
hugo mod npm pack
npm install
hugo
```
