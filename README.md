# Hugo Forum Topic #54636

Details: <https://discourse.gohugo.io/t/54636>

Description: Can shuffle be cached?

## Instructions

Clone this branch of the repository and build the site.

```text
git clone --single-branch -b hugo-forum-topic-54636 https://github.com/jmooring/hugo-testing hugo-forum-topic-54636
cd hugo-forum-topic-54636
hugo server
```

To test performance of various methods to list 5 random pages on each page:

```text
hugo --logLevel info
```
