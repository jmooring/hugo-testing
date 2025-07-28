# Hugo Forum Topic #55456

Details: <https://discourse.gohugo.io/t/55456>

Description: Using a page path in layouts outputs a blank site

## Instructions

Clone this branch of the repository and build the site.

```text
git clone --single-branch -b hugo-forum-topic-55456 https://github.com/jmooring/hugo-testing hugo-forum-topic-55456
rm -rf public
hugo
echo "public/s1/index.html:" && cat public/s1/index.html
echo "public/s1/p1/index.html:" && cat public/s1/p1/index.html
```
