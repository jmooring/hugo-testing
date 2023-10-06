# Hugo Forum Topic #46552

Details: <https://discourse.gohugo.io/t/46552>

Description: Resizing images and renaming them

## Instructions

Clone this branch of the repository and build the site.

```text
git clone --single-branch -b hugo-forum-topic-46552 https://github.com/jmooring/hugo-testing hugo-forum-topic-46552
cd hugo-forum-topic-46552
hugo server
```

The visit `http://localhost:1313/posts/post-1/`

Then check content of public:

```text
rm -rf public && hugo && tree public
```
