# Hugo Forum Topic #42165

Details: <https://discourse.gohugo.io/t/42165>

Description: Building pages from data

This is a multilingual site that build pages from data, based on Regis Philibert's article:

https://www.thenewdynamic.com/article/toward-using-a-headless-cms-with-hugo-part-2-building-from-remote-api/

You can pull in different data for each language if necessary.

## Instructions

Clone this branch of the repository and build the site.

```bash
git clone --single-branch -b hugo-forum-topic-42165 https://github.com/jmooring/hugo-testing hugo-forum-topic-42165
cd hugo-forum-topic-42165
hugo -s prebuild && hugo server
```
