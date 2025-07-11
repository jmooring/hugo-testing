# Hugo GitHub Issue #13856

Details: <https://github.com/gohugoio/hugo/issues/13856>

Description: Fail Build on Ambiguous Configuration

## Instructions

Clone this branch of the repository and build the site.

```text
git clone --single-branch -b hugo-github-issue-13856 https://github.com/jmooring/hugo-testing hugo-github-issue-13856
cd hugo-github-issue-13856

# this comes from hugo.toml
hugo config | grep baseurl

# this comes from config/_default/hugo.toml
hugo config | grep defaultcontentlanguage

# this comes from hugo.toml, config/_default/hugo.toml, and config/_default/languages.toml
hugo config | grep -A4 "\[languages\."

# this comes from config/_default/params.toml, which takes precedence over config/_default/hugo.toml, which takes precedence over hugo.toml
hugo config | grep -A1 "\[params"
```
