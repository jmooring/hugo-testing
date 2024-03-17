# Hugo Forum Topic #48875

Details: <https://discourse.gohugo.io/t/48875>

Description: Header n° in Headings and HeadingsMap

## Instructions

Clone this branch of the repository and build the site.

```text
git clone --single-branch -b hugo-forum-topic-48875 https://github.com/jmooring/hugo-testing hugo-forum-topic-48875
cd hugo-forum-topic-48875
rm -rf public && hugo && cat public/posts/post-1/bib.txt
```

Files of interest:

- hugo.toml
- layouts/_default/_markup/render-heading.html
- layouts/_default/_markup/render-link.html
- layouts/_default/single.bib.txt
