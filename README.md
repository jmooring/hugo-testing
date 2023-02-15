# Hugo GitHub Issue #10726

Details: <https://github.com/gohugoio/hugo/issues/10726>

Description: Live reload doesn't work with js.Build

## Instructions

Clone this branch of the repository and build the site.

```text
git clone --single-branch -b hugo-github-issue-10726 https://github.com/jmooring/hugo-testing hugo-github-issue-10726
cd hugo-github-issue-10726
hugo server
```

Visit <http://localhost:1313/tests/test-1/>, then open the browser console:

- If you change assets/main.ts a couple of times, the updates are immediately visible in the browser console.
- If you change content/tests/test-1/test.ts a couple of times, the first or second update is not visible until you restart hugo server.
