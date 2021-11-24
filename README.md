# Hugo GitHub Issue #9204

Details: <https://github.com/gohugoio/hugo/issues/9204>

Description: panic: [BUG] no Page found for

## Instructions

Clone this branch of the repository and build the site.

```bash
git clone --single-branch -b hugo-github-issue-9204 https://github.com/jmooring/hugo-testing hugo-github-issue-9204
cd hugo-github-issue-9204
hugo new content/en/post/test   # defaultContentLanguage
hugo new content/de/post/test
```

Now, clear the content directories, then create the content in reverse order.

```bash
rm -rf content/en/* content/de/*
hugo new content/de/post/test
hugo new content/en/post/test   # defaultContentLanguage
```

To avoid the error:
- If the defaultContentLanguage is `en`, create the `de` content first.
- If the defaultContentLanguage is `de`, create the `en` content first.
