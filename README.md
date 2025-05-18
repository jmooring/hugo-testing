# Hugo GitHub Issue #13704

Details: <https://github.com/gohugoio/hugo/issues/13704>

Description: resources/resource_transformers: Add sourceMap option to css.TailwindCSS

## Instructions

Clone this branch of the repository and build the site.

```text
git clone --single-branch -b hugo-github-issue-13704 https://github.com/jmooring/hugo-testing hugo-github-issue-13704
cd hugo-github-issue-13704
npm i
rm -rf public/ resources/ && hugo && cat public/css/main.css 
```

With `inlineImports` set to `true` I expect the tail of the CSS file to be:

```css
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

With `inlineImports` set to `false` I expect the tail of the CSS file to be:

```css
.green {
  color: green;
}
.red {
  color: red;
}
```

... and I think Tailwind will throw an error or two in this case.
