# Hugo Forum Topic #48359

Details: <https://discourse.gohugo.io/t/48359>

Description: Hugo v0.123.0: images are not showing up any more

## Instructions

Clone this branch of the repository and build the site.

```text
git clone --single-branch -b hugo-forum-topic-48359 https://github.com/jmooring/hugo-testing hugo-forum-topic-48359
cd hugo-forum-topic-48359
rm -rf public && hugo && tree public
```

Now remove this file:

```text
rm content/de/s1/images/_index.md
```

And test again:

```text
rm -rf public && hugo && tree public
```

All good!
