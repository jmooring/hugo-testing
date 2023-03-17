# Hugo GitHub Issue #10846

Details: <https://github.com/gohugoio/hugo/issues/10846>

Description: Calls to postcss-cli silently fail when the config option is wrong

## Instructions

Clone this branch of the repository and build the site.

```text
git clone --single-branch -b hugo-github-issue-10846 https://github.com/jmooring/hugo-testing hugo-github-issue-10846
cd hugo-github-issue-10846
npm ci
hugo
```

This should throw an error.

If postcss were actually doing something, the content of public/index.html would be:

```text
::-moz-placeholder {
  color: gray;
}
::placeholder {
  color: gray;
}
```
