# Hugo GitHub Issue #13648

Details: <https://github.com/gohugoio/hugo/issues/13648>

Description: hugo server: Taxonomy pages not updated

## Instructions

Clone this branch of the repository and build the site.

```text
git clone --single-branch -b hugo-github-issue-13648 https://github.com/jmooring/hugo-testing hugo-github-issue-13648
cd hugo-github-issue-13648
hugo server
```

While `hugo server` is running:

1. Visit the [tags](/tags/) page
2. Add another tag to `content/posts/post-1.md`

Note that the tags page does not show the new tag.
