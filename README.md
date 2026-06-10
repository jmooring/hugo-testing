# Hugo Forum Topic #37345

Details: <https://discourse.gohugo.io/t/37345>

Description: Is this worth mentioning in the docs?

## Instructions

Clone this branch of the repository and build the site.

```bash
git clone --single-branch -b hugo-forum-topic-37345 https://github.com/jmooring/hugo-testing hugo-forum-topic-37345
cd hugo-forum-topic-37345
hugo server
```

Then in a new terminal:

```bash
echo "body {color: red}" >> assets/css/assets.css
echo "body {background-color: cyan}" >> static/css/static.css
```
