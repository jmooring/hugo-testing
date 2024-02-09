# Hugo GitHub Issue #12017

Details: <https://github.com/gohugoio/hugo/issues/12017>

Description: hugo server does not refresh page when using resources.Concat

## Instructions

Clone this branch of the repository and build the site.

```text
git clone --single-branch -b hugo-github-issue-12017 https://github.com/jmooring/hugo-testing hugo-github-issue-12017
cd hugo-github-issue-12017
hugo server
```

Then edit line 26 of themes/PaperMod/assets/css/common/header.css, changing the font size from 24px to 72px. The page does not reload as it did with v0.122.0.
