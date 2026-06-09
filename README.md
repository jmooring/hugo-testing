# Hugo GitHub Issue #15012

Details: <https://github.com/gohugoio/hugo/issues/15012>

Description: commands: Fix convert command

## Instructions

Clone this branch of the repository and build the site.

```text
git clone --single-branch -b hugo-github-issue-15012 https://github.com/jmooring/hugo-testing hugo-github-issue-15012
cd hugo-github-issue-15012
rm -rf public/
rm -rf output && hugo convert toJSON -o output/json
rm -rf output && hugo convert toTOML -o output/toml
rm -rf output && hugo convert toYAML -o output/yaml
```
