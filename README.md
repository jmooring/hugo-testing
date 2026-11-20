# Hugo GitHub Issue #15620

Details: <https://github.com/gohugoio/hugo/issues/15620>

Description: Embedded link and image render hooks are not enabled for projects with multiple versions

## Instructions

Clone this branch of the repository and build the site.

```text
git clone --single-branch -b hugo-github-issue-15620 https://github.com/jmooring/hugo-testing hugo-github-issue-15620
cd hugo-github-issue-15620
rm -rf public && hugo && tree public
```

Then compare these pages:

- <http://localhost:1313/v1/s1/p1/> (image and link work)
- <http://localhost:1313/v2/s1/p1/> (image is broken, link returns a 404 error)
- <http://localhost:1313/v3/s1/p1/> (image and link work)
