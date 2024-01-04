# Hugo GitHub Issue #11856

Details: <https://github.com/gohugoio/hugo/issues/11856>

Description: JPEG image gets PNG extension due to caching issue

## Instructions

Clone this branch of the repository and build the site (twice):

```text
git clone --single-branch -b hugo-github-issue-11856 https://github.com/jmooring/hugo-testing hugo-github-issue-11856
cd hugo-github-issue-11856
hugo && tree public/ && grep "img" public/posts/post-1/index.html
hugo && tree public/ && grep "img" public/posts/post-1/index.html
```
