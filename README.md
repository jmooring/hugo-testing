# Hugo Forum Topic #41114

Details: <https://discourse.gohugo.io/t/41114>

Description: Persisting data across the build of a site

## Instructions

Clone this branch of the repository and build the site.

```bash
git clone --single-branch -b hugo-forum-topic-41114 https://github.com/jmooring/hugo-testing hugo-forum-topic-41114
cd hugo-forum-topic-41114
HUGO_NUMWORKERMULTIPLIER=1 hugo server
```

Note that you must set HUGO_NUMWORKERMULTIPLIER=1 to prevent concurrency issues when setting/getting the Scratch value stored on the home page.
