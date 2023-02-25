# Hugo Forum Topic #43127

Details: <https://discourse.gohugo.io/t/43127>

Description: How to connect infinite scrolling to a page on hugo?

## Instructions

Clone this branch of the repository and build the site.

```text
git clone --single-branch -b hugo-forum-topic-43127 https://github.com/jmooring/hugo-testing hugo-forum-topic-43127
cd hugo-forum-topic-43127
npm ci
hugo server
```

Please note that the site is served from a subdirectory:

  http://localhost:1313/foo/

We configured the site this way to demonstrate that the link and image render hooks are properly resolving the link and image destinations in markdown.
See Posts 27-30 for examples.

By default, the content of each page is shown while scrolling through the list.
You can configure what to display by adding this to your site configuration:

  [params.ias]
  showSummary = false # default is false
  showContent = true # default is true
