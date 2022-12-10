# Hugo GitHub Issue #10515

Details: <https://github.com/gohugoio/hugo/issues/10515>

Description: sitemap.xml as a plain text - bug in declaration in urlset

## Instructions

Clone this branch of the repository and build the site.

```bash
git clone --single-branch -b hugo-github-issue-10515 https://github.com/jmooring/hugo-testing hugo-github-issue-10515
cd hugo-github-issue-10515
hugo server
```

Then check both of these URLS:

- <http://localhost:1313/sitemap.xml>
- <http://localhost:1313/en/sitemap.xml>

You should see this at the top:

> This XML file does not appear to have any style information associated with it. The document tree is shown below.

Followed by well-structured XML.
