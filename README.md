# Hugo GitHub Issue #8863

Details: <https://github.com/gohugoio/hugo/issues/8863>

Description: Hugo server detects change but does not update 

## Instructions

Clone this branch of the repository and build the site.

```bash
git clone --single-branch -b hugo-github-issue-8863 https://github.com/jmooring/hugo-testing hugo-github-issue-8863
cd hugo-github-issue-8863
hugo server
```

Visit `http://localhost:1313/post/test/`

Then, in a separate terminal:

```bash
echo "xxx" >> layouts/partials/foo.html
```
