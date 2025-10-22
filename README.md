# Hugo Forum Topic #56129

Details: <https://discourse.gohugo.io/t/56129>

Description: Site configuration: default handling of language-specific keys

## Instructions

Clone this branch of the repository and build the site.

```text
git clone --single-branch -b hugo-forum-topic-56129 https://github.com/jmooring/hugo-testing hugo-forum-topic-56129
cd hugo-forum-topic-56129
hugo && cat public/en/index.html public/de/index.html 
```

Notice that the table of contents uses the default start level of 2 instead of the start level in the root.

Now, in the site configuration, uncomment the two instances of # _merge = 'deep'", and run this command again:

```text
hugo && cat public/en/index.html public/de/index.html 
```

Notice that the table of contents now uses the start level in the root.
