# Hugo Forum Topic #44549

Details: <https://discourse.gohugo.io/t/44549>

Description: Multilingual multihost example site

## Instructions

Clone this branch of the repository and build the site.

```text
git clone --single-branch -b hugo-forum-topic-44549 https://github.com/jmooring/hugo-testing hugo-forum-topic-44549
cd hugo-forum-topic-44549
hugo server
```

To run as a monolingual site:

```text
hugo server --config hugo-monolingual.toml
```

## Notes

If you add a path to one of the baseURLs, the URL for menu entries and shared resources will be wrong for the other site. See <https://github.com/gohugoio/hugo/issues/10912>.
