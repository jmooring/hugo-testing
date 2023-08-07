# Hugo Forum Topic #45616

Details: <https://discourse.gohugo.io/t/45616>

Description: Shortcodes seems wont be reloaded after modifying

## Instructions

Clone this branch of the repository and build the site.

```text
git clone --single-branch -b hugo-forum-topic-45616 https://github.com/jmooring/hugo-testing hugo-forum-topic-45616
cd hugo-forum-topic-45616
hugo server --gc --disableFastRender --enableGitInfo -D
```

Then modify either of these:

- layouts/shortcodes/foo.html
- layouts/shortcodes/bar.html

The home page is updated.
