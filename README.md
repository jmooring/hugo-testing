# Hugo GitHub Issue #10393

Details: <https://github.com/gohugoio/hugo/issues/10393>

Description: RSS output clobbers HTML output if url in front matter of section page includes a file extension

## Instructions

Clone this branch of the repository and build the site.

```bash
git clone --single-branch -b hugo-github-issue-10393 https://github.com/jmooring/hugo-testing hugo-github-issue-10393
cd hugo-github-issue-10393
rm -rf public && hugo && cat public/posts/test.html
```

You can see that the RSS output clobbers the HTML output.

```bash
hugo --printPathWarnings 
```
