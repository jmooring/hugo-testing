# Hugo GitHub Issue #11671

Details: <https://github.com/gohugoio/hugo/issues/11671>

Description: Renamed content directories not added to the watcher

## Instructions

Clone this branch of the repository and build the site.

```text
git clone --single-branch -b hugo-github-issue-11671 https://github.com/jmooring/hugo-testing hugo-github-issue-11671
cd hugo-github-issue-11671
hugo server
```

In the browser you will see:

```text
Title = Post 1
RelPermalink = /posts/post-1/
```

While the server is running, rename contents/posts to content/foo. The watcher detects the change, but the text displayed in the browser does not change.
