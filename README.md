# Hugo GitHub Issue #11278

Details: <https://github.com/gohugoio/hugo/issues/11278>

Description: Env HUGO_DISABLELANGUAGES is not working after v0.111.3 with multiple values

## Instructions

Clone this branch of the repository and build the site.

```text
git clone --single-branch -b hugo-github-issue-11278 https://github.com/jmooring/hugo-testing hugo-github-issue-11278
cd hugo-github-issue-11278
HUGO_DISABLELANGUAGES="de fr" hugo
```
