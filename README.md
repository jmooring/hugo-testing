# Hugo GitHub Issue #12618

Details: <https://github.com/gohugoio/hugo/issues/12618>

Description: Add css.TailwindCSS (or something) and do some package restructuring

## Instructions

Clone this branch of the repository and build the site.

```text
git clone --single-branch -b hugo-github-issue-12618 https://github.com/jmooring/hugo-testing hugo-github-issue-12618
cd hugo-github-issue-12618
npm install
hugo server
```

In the above, we're doing `npm install` instead of `npm ci` to make sure we get the latest version while Tailwind CSS v4.0 is still in development.

## Notes

Installing Tailwind CSS v4.0.0-alpha:

```text
npm install --save-dev tailwindcss@next @tailwindcss/cli@next
```
