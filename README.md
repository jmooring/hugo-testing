# Hugo GitHub Issue #8405

Details: <https://github.com/gohugoio/hugo/issues/8405>

Description: Extra closing tags left when using truncate and safeHTML function on HTML with nested div tags.

## Instructions

Clone this branch of the repository and build the site.

```bash
git clone --single-branch -b hugo-github-issue-8405 https://github.com/jmooring/hugo-testing hugo-github-issue-8405
cd hugo-github-issue-8405
hugo server
```

Then visit `http://localhost:1313/post/test/` and view source.

See `layouts/_default/single.html` for code.
