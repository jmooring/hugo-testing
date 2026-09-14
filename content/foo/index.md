+++
title = 'Foo'
date = 2026-09-14T15:05:16-07:00
draft = false
+++

This page simulates the "index.html" shell of a single-page application.

In production, your web server routes any request under `/foo/**` to this
page, and client-side JavaScript reads `window.location.pathname` to decide
what to render.

The development server can do the same thing using a `[[redirects]]` rule
with `status = 200`, which triggers a URL rewrite instead of an HTTP
redirect. See config/development/server.toml in the project root.

Try visiting a few URLs that don't exist as real pages:

- [/foo/users/42](/foo/users/42)
- [/foo/settings](/foo/settings)
- [/foo/anything/at/all](/foo/anything/at/all)

Each one renders this same page instead of the default 404 page.
