# Hugo GitHub Issue #15594

Details: <https://github.com/gohugoio/hugo/issues/15594>

Description: Mounted files seem to shadow all other files in the same target folder

## Instructions

Clone this branch of the repository and build the site.

```text
git clone --single-branch -b hugo-github-issue-15594 https://github.com/jmooring/hugo-testing hugo-github-issue-15594
cd hugo-github-issue-15594
rm -rf public/ && hugo && tree public
```
