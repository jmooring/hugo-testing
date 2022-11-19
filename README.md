# Hugo Forum Topic #41532

Details: <https://discourse.gohugo.io/t/41532>

Description: Appending a page to a page collection: append or union?

## Instructions

Clone this branch of the repository and build the site.

```bash
git clone --single-branch -b hugo-forum-topic-41532 https://github.com/jmooring/hugo-testing hugo-forum-topic-41532
cd hugo-forum-topic-41532
hugo server
```

Run this command repeatedly and watch the output vary from one build to the next:

```bash
hugo && grep h3 public/section-1/section-1-2/section-1-2-1/page-13/index.html
```

You should see headings for:

- Page 04
- Page 05
- Page 06
- Page 13 (should be highlighted)
