# Hugo Forum Topic #37954

Details: <https://discourse.gohugo.io/t/37954>

Description: Using PurgeCSS (From Scratch)

## Instructions

Clone this branch of the repository and build the site.

```text
git clone --single-branch -b hugo-forum-topic-37954 https://github.com/jmooring/hugo-testing hugo-forum-topic-37954
cd hugo-forum-topic-37954
npm ci
rm -rf public && hugo && cat public/css/main.*.css
```

The output should look like this:

```css
/* Test autoprefixer. */
/* ------------------------------------------------------------------------- */
::-moz-placeholder {
  color: gray; }
::placeholder {
  color: gray; }

/* Test purgecss. */
/* ------------------------------------------------------------------------- */
.green {
  color: green; }

#red {
  color: red; }
```

In the above note that:

- autoprefixer added a moz-placeholder entry
- purgecss removed the "unused-class" class and the "unused-id" id

## Notes

I used the following to initially install the Node.js packages:

```text
npm i -D postcss postcss-cli autoprefixer @fullhuman/postcss-purgecss
```
