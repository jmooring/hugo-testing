# Hugo GitHub Issue #15609

Details: <https://github.com/gohugoio/hugo/issues/15609>

Description: useResourceCacheWhen fallback is ignored when PostCSS is not found

## Instructions

Clone this branch of the repository and build the site.

```text
git clone --single-branch -b hugo-github-issue-15609 https://github.com/jmooring/hugo-testing hugo-github-issue-15609
cd hugo-github-issue-15609
hugo && cat public/index.html
```

You will see this in the console, as expected:

```text
::-moz-placeholder {
  color: gray;
}
::placeholder {
  color: gray;
}
```

Now, in the project config, change `useResourceCacheWhen` to `fallback`:

```toml
[build]
useResourceCacheWhen = 'fallback'
```

Then build the project again:

```text
hugo && cat public/index.html
```

Hugo throws an error:

> PostCSS not found; install it or add its location to PATH
