# Hugo GitHub Issue #7316

Details: <https://github.com/gohugoio/hugo/issues/7316>

Description: Make resource.PostProcess work with relativeURLs=true

## Instructions

Clone this branch of the repository and build the site.

```text
git clone --single-branch -b hugo-github-issue-7316 https://github.com/jmooring/hugo-testing hugo-github-issue-7316
cd hugo-github-issue-7316
npm ci
rm -rf public/ && hugo && grep css public/posts/post-1/index.html 
```

Expected:

```text
<link rel="stylesheet" href="../../scss/main.css">
```

Actual:

```text
<link rel="stylesheet" href="/scss/main.css">
```
