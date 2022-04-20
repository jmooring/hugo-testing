# Hugo GitHub Issue #9774

Details: <https://github.com/gohugoio/hugo/issues/9774>

Description: Redirect expired pages to dedicated page (or main page)

## Instructions

Clone this branch of the repository and build the site.

```bash
git clone --single-branch -b hugo-github-issue-9774 https://github.com/jmooring/hugo-testing hugo-github-issue-9774
cd hugo-github-issue-9774
npm install
hugo -E && hugo
npx serve public
```

The `npm install` step installs a small web server (run with `npx serve public`) for testing the redirects.
