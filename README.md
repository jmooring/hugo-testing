# Hugo GitHub Issue #12555

Details: <https://github.com/gohugoio/hugo/issues/12555>

Description: Hugo attempts to download module from GitHub even after it has been downloaded to _vendors folder

## Instructions

Clone this branch of the repository and build the site.

```text
git clone --single-branch -b hugo-github-issue-12555 https://github.com/jmooring/hugo-testing hugo-github-issue-12555
cd hugo-github-issue-12555
```

Now terminate all network connections.

```text
hugo server
```
