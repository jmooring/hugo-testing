# Hugo Forum Topic #44976

Details: <https://discourse.gohugo.io/t/44976>

Description: 0.112.7: failed to decode config for language "pl": unknown config key "outputformats"

## Instructions

Clone this branch of the repository and build the site.

```text
git clone --single-branch -b hugo-forum-topic-44976 https://github.com/jmooring/hugo-testing hugo-forum-topic-44976
cd hugo-forum-topic-44976
rm -rf public/ && hugo && tree public
```

With v0.111.3 and earlier, no problems.

With v0.112.0 and later:

Error: failed to create config from result: failed to decode config for language "de": unknown config key "outputformats"
