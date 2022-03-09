# Hugo Forum Topic #30244

Details: <https://discourse.gohugo.io/t/30244>

Description: How to share a Partial across Output Formats

## Instructions

Clone this branch of the repository and build the site.

```bash
git clone --single-branch -b hugo-forum-topic-30244 https://github.com/jmooring/hugo-testing hugo-forum-topic-30244
cd hugo-forum-topic-30244
hugo
grep EXAMPLE public/index.html
grep EXAMPLE public/index.txt
```
