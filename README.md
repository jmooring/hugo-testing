# Hugo Forum Topic #45095

Details: <https://discourse.gohugo.io/t/45095>

Description: Question: is `page` supposed to work inside of a shortcode?

## Instructions

Clone this branch of the repository and build the site.

```text
git clone --single-branch -b hugo-forum-topic-45095 https://github.com/jmooring/hugo-testing hugo-forum-topic-45095
cd hugo-forum-topic-45095
chmod 700 test.sh
./test.sh
```

The script builds the site 100 times, counting the number of times that one of the regular pages (post-1) is rendered before the list page.
