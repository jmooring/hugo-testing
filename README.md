# Hugo GitHub Issue #13530

Details: <https://github.com/gohugoio/hugo/issues/13530>

Description: Add support for `quietDeps` for Sass compiler

## Instructions

Clone this branch of the repository and build the site.

```text
git clone --single-branch -b hugo-github-issue-13530 https://github.com/jmooring/hugo-testing hugo-github-issue-13530
cd hugo-github-issue-13530
hugo && cat public/index.html 
```

Expected output in terminal:

```text
h1{color:#e00}h2{color:#d00}h3{color:#c00}h4{color:#b00}
```

And no warnings.
