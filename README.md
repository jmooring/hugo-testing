# Hugo GitHub Issue #15619

Details: <https://github.com/gohugoio/hugo/issues/15619>

Description: markup/highlight: Cache highlighted code across sites

## Instructions

Clone this branch of the repository and build the site.

```text
git clone --single-branch -b hugo-github-issue-15619 https://github.com/jmooring/hugo-testing hugo-github-issue-15619
cd hugo-github-issue-15619
hugo && cat public/en/index.html public/de/index.html
```

The two pages should have different rendered code blocks.
