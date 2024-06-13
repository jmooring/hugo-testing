# Hugo Forum Topic #50227

Details: <https://discourse.gohugo.io/t/50227>

Description: Unable to import netlify environment variable in assets/js/custom.js

## Instructions

Clone this branch of the repository and build the site.

```text
git clone --single-branch -b hugo-forum-topic-50227 https://github.com/jmooring/hugo-testing hugo-forum-topic-50227
cd hugo-forum-topic-50227
HUGO_PARAMS_ENCRYPTION_KEY_HEX=foo hugo server
```

Then visit the site and open your browser's dev tools console to inspect the output from console.log.
