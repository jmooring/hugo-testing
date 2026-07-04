# Hugo GitHub Issue #15082

Details: <https://github.com/gohugoio/hugo/issues/15082>

Description: Add markup.rst.syntaxHighlight option

## Instructions

Clone this branch of the repository and build the site.

```text
git clone --single-branch -b hugo-github-issue-15082 https://github.com/jmooring/hugo-testing hugo-github-issue-15082
cd hugo-github-issue-15082
sudo apt install python3-pygments
mkdir -p assets/css
pygmentize -S monokai -f html > assets/css/syntax.css
hugo server
```
