# Hugo Forum Topic #50332

Details: <https://discourse.gohugo.io/t/50332>

Description: GetTerms getting slows as the content grows

## Instructions

Clone this branch of the repository and build the site.

```text
git clone --single-branch -b hugo-forum-topic-50332 https://github.com/jmooring/hugo-testing hugo-forum-topic-50332
cd hugo-forum-topic-50332
```

Test 1

```text
for i in {0001..1000}; do cp content/posts/post.md "content/posts/post-$i.md"; done
hugo --logLevel info
```

Test 2

```text
for i in {0001..2000}; do cp content/posts/post.md "content/posts/post-$i.md"; done
hugo --logLevel info
```

etc.
