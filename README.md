# Hugo Forum Topic #54272

Details: <https://discourse.gohugo.io/t/54272>

Description: Reconfiguring the folder structure

## Instructions

Clone this branch of the repository and build the site.

```text
git clone --single-branch -b hugo-forum-topic-54272 https://github.com/jmooring/hugo-testing hugo-forum-topic-54272
cd hugo-forum-topic-54272
npm ci
rm -rf resources/ _site/ && hugo && cat _site/css/main.css 
```
