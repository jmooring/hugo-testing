# Hugo Forum Topic #48029

Details: <https://discourse.gohugo.io/t/48029>

Description: Crafting and configuring a "serverless" site (multilingual single-host)

## Instructions

Clone this branch of the repository and build the site.

```text
git clone --single-branch -b hugo-forum-topic-48029-multilingual-single-host https://github.com/jmooring/hugo-testing hugo-forum-topic-48029-multilingual-single-host
cd hugo-forum-topic-48029-multilingual-single-host
```

To build and view the site in "serverless" mode:

```text
rm -rf public && hugo -e serverless && google-chrome public/en/index.html 
```

To build and view the site in "server" mode:

```text
hugo server
```

To build the production site:

```text
hugo
```

## Notes

The menu and language switcher partials contain workarounds for:
<https://github.com/gohugoio/hugo/issues/7497>
