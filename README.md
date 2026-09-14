# Hugo GitHub Issue #15345

Details: <https://github.com/gohugoio/hugo/issues/15345>

Description: Add development server SPA support - url rewriting

## Answer

Yes, this is already possible using the existing [`server.redirects`
configuration](https://gohugo.io/configuration/server/#redirects). A
redirect rule with `status = 200` triggers a URL *rewrite* rather than an
HTTP redirect, which is exactly the SPA "catch-all" behavior requested in
the issue:

```toml
[[redirects]]
  from = '/foo/**'
  to = '/foo/'
  status = 200
```

As recommended in the [server configuration
docs](https://gohugo.io/configuration/server/), these dev-server-only
settings live in a dedicated [configuration
directory](https://gohugo.io/configuration/introduction/#configuration-directory):
[config/development/server.toml](config/development/server.toml). This
keeps them isolated from [config/_default/hugo.toml](config/_default/hugo.toml),
which only applies to the production build.

## Instructions

Clone this branch of the repository and build the site.

```text
git clone --single-branch -b hugo-github-issue-15345 https://github.com/jmooring/hugo-testing hugo-github-issue-15345
cd hugo-github-issue-15345
hugo server
```
