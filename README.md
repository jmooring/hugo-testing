# Hugo Forum Topic #42165

Details: <https://discourse.gohugo.io/t/42165>

Description: Building pages from data

This multilingual site builds pages from data, based on an [article] by [Regis Philibert] of [The New Dynamic]. You can pull in different data for each language if necessary.

[article]: https://www.thenewdynamic.com/article/toward-using-a-headless-cms-with-hugo-part-2-building-from-remote-api/
[Regis Philibert]: https://discourse.gohugo.io/u/regis/
[The New Dynamic]: https://www.thenewdynamic.com/

Section|Source of content
:--|:--
Articles|A local JSON file
Books|Remote data
People|Remote data (10,000 objects)
Posts|Markdown files in the content directory
Releases|Remote data from URLs in a local YAML file

You can pull in different data for each language if necessary.

## Instructions

Clone this branch of the repository and build the site.

```bash
git clone --single-branch -b hugo-forum-topic-42165 https://github.com/jmooring/hugo-testing hugo-forum-topic-42165
cd hugo-forum-topic-42165
hugo -s prebuild && hugo server
```
