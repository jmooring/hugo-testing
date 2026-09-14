# Hugo GitHub Issue #15346

Details: <https://github.com/gohugoio/hugo/issues/15346>

Description: Merge configuration settings ignored in merging multiple `--config` files

## Instructions

Clone this branch of the repository and build the site.

```text
git clone --single-branch -b hugo-github-issue-15346 https://github.com/jmooring/hugo-testing hugo-github-issue-15346
cd hugo-github-issue-15346
rm -rf public && hugo build --config a.toml,b.toml && tree public
```
