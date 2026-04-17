# Hugo GitHub Issue #14104

Details: <https://github.com/gohugoio/hugo/issues/14104>

Description: ":slugorcontentbasename creates subdirectory for section page"

## Notes

We determined that #14104 contained an invalid config given the intended result. This test site includes the correct config given the intended result, and works as expected (including a home page collision) with v0.160.1 and later.

## Instructions

Clone this branch of the repository and build the site.

```text
git clone --single-branch -b hugo-github-issue-14104 https://github.com/jmooring/hugo-testing hugo-github-issue-14104
cd hugo-github-issue-14104
rm -rf public/ && hugo --printPathWarnings && tree public
```
