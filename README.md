# Hugo Forum Topic #42304

Details: <https://discourse.gohugo.io/t/42304>

Description: Height mismatch of highlighted line number in syntax highlighting

## Instructions

Clone this branch of the repository and build the site.

```text
git clone --single-branch -b hugo-forum-topic-42304 https://github.com/jmooring/hugo-testing hugo-forum-topic-42304
cd hugo-forum-topic-42304
hugo server
```

To fix the problems, uncomment this line in `assets/css/main.css`:

```css
@import "./code-blocks.css";
```
