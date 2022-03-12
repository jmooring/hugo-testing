# Hugo Forum Topic #37618

Details: <https://discourse.gohugo.io/t/37618>

Description: Render all pages of a site

## Instructions

Clone this branch of the repository and build the site.

```bash
git clone --single-branch -b hugo-forum-topic-37618 https://github.com/jmooring/hugo-testing hugo-forum-topic-37618
cd hugo-forum-topic-37618
hugo server
```

The image render hook assumes that the destination in the image markdown, in order of precedence, refers to a:

1. Remote resource (example: `https://example.org/foo.jpg`), OR
2. Page resource, OR
3. Global resource (located in the `assets` directory)

The link render hook assumes that the destination in the link markdown, in order of precedence, refers to a:

1. Remote resource (example: `https://example.org/bar.html`), OR 
2. Page reference, OR
3. Page resource, OR
4. Global resource (located in the `assets` directory)

If you also have resources in the `static` directory, either move them to the `assets` directory, or mount the `static` directory to the `assets` directory with:

```toml
[[module.mounts]]
  source = 'assets'
  target = 'assets'
[[module.mounts]]
  source = 'static'
  target = 'assets'
```
