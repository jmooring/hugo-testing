# Hugo Forum Topic #49591

Details: <https://discourse.gohugo.io/t/49591>

Description: Scss changes do not reload live

## Instructions

Clone this branch of the repository and build the site.

```text
git clone --single-branch -b hugo-forum-topic-49591 https://github.com/jmooring/hugo-testing hugo-forum-topic-49591
cd hugo-forum-topic-49591
hugo server
```

Browse to `http://localhost:1313/`, then make changes to assets/dir/b.scss.

Results:
- Expected: home page shows changes.
- Actual: no change.

Note that changes to assets/a.scss are shown immediately.
