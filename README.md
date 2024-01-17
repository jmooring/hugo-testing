# Hugo GitHub Issue #7436

Details: <https://github.com/gohugoio/hugo/issues/7436>

Description: Resource transformation key conflict when multiple languages in multihost mode and each with its own content dir

## Instructions

Clone this branch of the repository and build the site.

```text
git clone --single-branch -b hugo-github-issue-7436 https://github.com/jmooring/hugo-testing hugo-github-issue-7436
cd hugo-github-issue-7436

rm -rf resources public
hugo
printf "\n\n# public/en/posts/post-1/style.css\n"
cat           public/en/posts/post-1/style.css
printf "\n\n# public/en/posts/post-1/style.min.css\n"
cat           public/en/posts/post-1/style.min.css
printf "\n\n# public/fr/posts/post-1/style.css\n"
cat           public/fr/posts/post-1/style.css
printf "\n\n# public/fr/posts/post-1/style.min.css\n"
cat           public/fr/posts/post-1/style.min.css
```
