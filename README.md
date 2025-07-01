# Hugo Forum Topic #55179

Details: <https://discourse.gohugo.io/t/55179>

Description: Possible bug: Single layout for pages in v0.147.9

## Instructions

Clone this branch of the repository and build the site.

```text
git clone --single-branch -b hugo-forum-topic-55179 https://github.com/jmooring/hugo-testing hugo-forum-topic-55179
cd hugo-forum-topic-55179
```

Then:

```text
rm -rf public && \
hugo && \
printf "p1: %s\n" "$(cat public/p1/index.html)" && \
printf "p2: %s\n" "$(cat public/p2/index.html)" && \
printf "p3: %s\n" "$(cat public/p3/index.html)" && \
printf "p4: %s\n" "$(cat public/s1/p4/index.html)" && \
printf "p5: %s\n" "$(cat public/s2/p5/index.html)" && \
printf "p6: %s\n" "$(cat public/page/p6/index.html)"
```
