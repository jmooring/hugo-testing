# Hugo GitHub Issue #12120

Details: <https://github.com/gohugoio/hugo/issues/12120>

Description: .Page.GetPage from within a page bundle is unable to find another page if extension included in target

## Instructions

Clone this branch of the repository and build the site.

```text
git clone --single-branch -b hugo-github-issue-12120 https://github.com/jmooring/hugo-testing hugo-github-issue-12120
cd hugo-github-issue-12120
hugo
cat public/s1/p1/index.html
cat public/s1/p2/index.html
```
