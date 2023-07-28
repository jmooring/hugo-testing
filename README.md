# Hugo Forum Topic #45501

Details: <https://discourse.gohugo.io/t/45501>

Description: Trouble with PurgeCSS

## Instructions

Clone this branch of the repository and build the site.

```text
git clone --single-branch -b hugo-forum-topic-45501 https://github.com/jmooring/hugo-testing hugo-forum-topic-45501
cd hugo-forum-topic-45501
npm ci
rm -rf resources/ public/ && hugo && more public/main.*.css
```

Files of interest:

- package.json
- postcss.config.js
- assets/sass/main.scss
- layouts/partials/css.html
