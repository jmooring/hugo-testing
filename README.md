# Hugo GitHub Issue #14231

Details: <https://github.com/gohugoio/hugo/issues/14231>

Description: Section name "tweet" causes standalone HTML template (`list.html`) to be ignored, falls back to `baseof.html`

## Instructions

Clone this branch of the repository and build the site.

```text
git clone --single-branch -b hugo-github-issue-14231 https://github.com/jmooring/hugo-testing hugo-github-issue-14231
cd hugo-github-issue-14231
hugo && cat public/tweet/index.html
```
