# Hugo GitHub Issue #11533

Details: <https://github.com/gohugoio/hugo/issues/11533>

Description: CSS minify breaks `calc` expression

## Instructions

Clone this branch of the repository and build the site.

```text
git clone --single-branch -b hugo-github-issue-11533 https://github.com/jmooring/hugo-testing hugo-github-issue-11533
cd hugo-github-issue-11533
hugo
hugo && cat public/css/main.min.css
```

Result:

```text
html{font-size:clamp(16px,calc(65% + 12 * (100vw - 320px)/1000),26px)}
```
