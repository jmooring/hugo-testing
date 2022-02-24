# Hugo GitHub Issue #9557

Details: <https://github.com/gohugoio/hugo/issues/9557>

Description: Remove the language id from page resources when publishing multilingual page bundles

## Instructions

Clone this branch of the repository and build the site.

```bash
git clone --single-branch -b hugo-github-issue-9557 https://github.com/jmooring/hugo-testing hugo-github-issue-9557
cd hugo-github-issue-9557
hugo
tree public
grep img public/es/about/index.html
```
