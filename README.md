# Hugo GitHub Issue #7437

Details: <https://github.com/gohugoio/hugo/issues/7437>

Description: Language code in resource filename kept in RelPermalink

## Instructions

Clone this branch of the repository and build the site.

```text
git clone --single-branch -b hugo-github-issue-7437 https://github.com/jmooring/hugo-testing hugo-github-issue-7437
cd hugo-github-issue-7437

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
