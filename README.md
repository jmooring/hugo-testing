# Hugo Forum Topic #46011

Details: <https://discourse.gohugo.io/t/46011>

Description: Check if page is mounted?

## Instructions

Clone this branch of the repository and build the site.

```text
git clone --single-branch -b hugo-forum-topic-46011 https://github.com/jmooring/hugo-testing hugo-forum-topic-46011
cd hugo-forum-topic-46011
hugo config --format json | tail -n+2 > prebuild/data/config.json
rm -rf prebuild/public
hugo -s prebuild
hugo server
```
