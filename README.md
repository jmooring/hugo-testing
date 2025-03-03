# Hugo Forum Topic #53757

Details: <https://discourse.gohugo.io/t/53757>

Description: Indentation isn't stripped from minified HTML like it is for minified XML

## Instructions

Clone this branch of the repository and build the site.

```text
git clone --single-branch -b hugo-forum-topic-53757 https://github.com/jmooring/hugo-testing hugo-forum-topic-53757
cd hugo-forum-topic-53757
hugo && cat public/index.html
hugo --minify && cat public/index.html
```
