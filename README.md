# Hugo GitHub Issue #8998

Details: <https://github.com/gohugoio/hugo/issues/8998>

Description: Reverse the lookup order of partials

## Instructions

Clone this branch of the repository and build the site.

```bash
git clone --single-branch -b hugo-github-issue-8998 https://github.com/jmooring/hugo-testing hugo-github-issue-8998
cd hugo-github-issue-8998
hugo && cat public/{p1,p2,p3}/index.html
```

#### Failing integration test

<https://github.com/jmooring/hugo/blob/issue-8998/tpl/tplimpl/integration_test.go#L119-L171>

#### Want

INLINE-P1
INLINE-P2
LAYOUTS/PARTIALS/FOO.HTML

#### Getting

LAYOUTS/PARTIALS/FOO.HTML
LAYOUTS/PARTIALS/FOO.HTML
LAYOUTS/PARTIALS/FOO.HTML
