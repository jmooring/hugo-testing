# Hugo Forum Topic #49465

Details: <https://discourse.gohugo.io/t/49465>

Description: AsciiDoc - No re-rendering on document changes

## Instructions

Clone this branch of the repository and build the site.

```text
git clone --single-branch -b hugo-forum-topic-49465 https://github.com/jmooring/hugo-testing hugo-forum-topic-49465
cd hugo-forum-topic-49465
hugo server
```

Open your browser to `http://localhost:1313/about/`.

Then in a new console:

```text
echo "foo" >> content/_index.md
echo "bar" >> content/about/index.md
```

Expected: content/about/index.md changes in browser.

Actual: content/about/index.md does not change in browser.
