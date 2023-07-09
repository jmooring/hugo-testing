# Hugo GitHub Issue #11232

Details: <https://github.com/gohugoio/hugo/issues/11232>

Description: Regression in typescript support

## Instructions

Clone this branch of the repository and build the site.

```text
git clone --single-branch -b hugo-github-issue-11232 https://github.com/jmooring/hugo-testing hugo-github-issue-11232
cd hugo-github-issue-11232
hugo server
```

Expected result: date stamp displayed in browser console

Actual result in v0.114.0:

> Error: error building site: JSBUILD: failed to transform "main.ts" (text/typescript): "/home/jmooring/code/hugo-testing/assets/main.ts:5:0": Experimental decorators are not currently enabled
