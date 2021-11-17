# Hugo GitHub Issue #8931

Details: <https://github.com/gohugoio/hugo/issues/8931>

Description: Weird cache-related issue with image processing .Resize

## Instructions

Clone this branch of the repository.

```bash
git clone --single-branch -b hugo-github-issue-8931 https://github.com/jmooring/hugo-testing hugo-github-issue-8931
cd hugo-github-issue-8931
hugo server
```

The first run will look fine.

```bash
hugo && cat public/tests/test-1/index.html
```

The next run will be wrong:

```bash
hugo && cat public/tests/test-1/index.html
```

To obtain the correct results, you _must_ remove the cached images:

```bash
rm -rf resources/_gen/images/* && hugo && cat public/tests/test-1/index.html
```
