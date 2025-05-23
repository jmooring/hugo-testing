# Hugo GitHub Issue #13738

Details: <https://github.com/gohugoio/hugo/issues/13738>

Description: Tailwind CSS CLI does not resolve @import paths

## Instructions

Clone this branch of the repository and build the site.

```text
git clone --single-branch -b hugo-github-issue-13738 https://github.com/jmooring/hugo-testing hugo-github-issue-13738
cd hugo-github-issue-13738
npm i
hugo && tail -n 13 public/css/main.css
```

Expect to see this at the end of the file:

```text
.green {
  color: green;
}
.red {
  color: red;
}
.blue {
  color: blue;
}
.purple {
  color: purple;
}
```
