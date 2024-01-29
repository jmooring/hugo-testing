# Hugo Forum Topic #35825

Details: <https://discourse.gohugo.io/t/35825>

Description: Viewing site without a server (serverless) 

## Instructions

Clone this branch of the repository and build the site.

```text
git clone --single-branch -b hugo-forum-topic-35825 https://github.com/jmooring/hugo-testing hugo-forum-topic-35825
cd hugo-forum-topic-35825
```

To build and view the site in "server" mode:

```text
hugo server
```

To build and view the site in "serverless" mode:

```text
rm -rf public/ && hugo -e serverless && google-chrome public/en/index.html 
```

To build the production site:

```text
hugo
```

## Notes

The menu and language switcher partials contain workarounds for:
<https://github.com/gohugoio/hugo/issues/7497>
