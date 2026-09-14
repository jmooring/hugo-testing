+++
title = 'Home'
date = 2026-09-14T15:05:16-07:00
draft = false
details = 'https://github.com/gohugoio/hugo/issues/15345'
description = "Add development server SPA support - url rewriting"
+++

Visit any of these URLs. None of them correspond to a real page except
`/foo/`, but all of them render the `/foo/` page instead of the default
404 page, because the request is rewritten by the `redirects` rule in
[config/development/server.toml](config/development/server.toml):

- <http://localhost:1313/foo/>
- <http://localhost:1313/foo/users/42>
- <http://localhost:1313/foo/settings>
- <http://localhost:1313/foo/anything/at/all>

Requests outside of `/foo/**`, e.g. <http://localhost:1313/nope>, still hit
the default 404 page.
