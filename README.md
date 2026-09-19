# Hugo GitHub Issue #15335

Details: <https://github.com/gohugoio/hugo/issues/15335>

Description: tpl/collections: Fix union of slices with different element types

## Instructions

Clone this branch of the repository and build the site.

```text
git clone --single-branch -b hugo-github-issue-15335 https://github.com/jmooring/hugo-testing hugo-github-issue-15335
cd hugo-github-issue-15335
hugo --ignoreCache && cat public/index.html
```

Expected:

```text
column_a: foo|column_b: bar|
field_a: baz|field_b: qux|
```
