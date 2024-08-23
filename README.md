# Hugo GitHub Issue #12792

Details: <https://github.com/gohugoio/hugo/issues/12792>

Description: Unexpected lookup order for shortcode templates

## Instructions

Clone this branch of the repository and build the site.

```text
git clone --single-branch -b hugo-github-issue-12792 https://github.com/jmooring/hugo-testing hugo-github-issue-12792
cd hugo-github-issue-12792
hugo server
hugo && cat public/en/index.html
```

Then start removing the shortcode template one by one, going from most specific to least specific according to:

https://gohugo.io/templates/shortcode/#template-lookup-order
