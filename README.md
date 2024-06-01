# Hugo Forum Topic #50103

Details: <https://discourse.gohugo.io/t/50103>

Description: Multihost Trouble

## Instructions

Clone this branch of the repository and build the site.

```text
git clone --single-branch -b hugo-forum-topic-50103 https://github.com/jmooring/hugo-testing hugo-forum-topic-50103
cd hugo-forum-topic-50103
hugo
cat public/en/index.html
cat public/de/index.html
```

Expected:

```text
https://en.example.org/main.css
https://de.example.org/main.css
```

Actual:

```text
https://en.example.org/main.css
https://en.example.org/main.css
```
