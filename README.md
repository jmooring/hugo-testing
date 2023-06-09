# Hugo Forum Topic #44751

Details: <https://discourse.gohugo.io/t/44751>

Description: Resize animated Gif to convert in png image

## Instructions

Clone this branch of the repository and build the site.

```text
git clone --single-branch -b hugo-forum-topic-44751 https://github.com/jmooring/hugo-testing hugo-forum-topic-44751
cd hugo-forum-topic-44751
rm -rf resources/_gen/images/ && hugo server
```

Then stop the server, and restart without clearing the image cache:

```text
hugo server
```

## Summary of bug

Tested with v0.101.0 and v0.113.0. This is not a new bug.

If you have an empty image cache (`resources/_gen/images`), the `.Width` and `.Height` methods return the original dimensions instead of the resized dimensions when you run `hugo` or `hugo server` for the first time. Note that the images in the cache (and the published images) are the correct size (i.e., resizing was successful).

If you run `hugo` or `hugo server` again (the image cache is not empty) the `.Width` and `.Height` methods return the correct (resized) dimensions.

This behavior is limited to animated GIF images. Non-animated GIF images work as expected, as do JPEG, WebP, etc.
