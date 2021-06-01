# Hugo GitHub Issue #8602

Details: <https://github.com/gohugoio/hugo/issues/8602>

Description: Improve pagination performance

## Instructions

Clone this branch of the repository and build the site.

```bash
git clone --single-branch -b hugo-github-issue-8602 https://github.com/jmooring/hugo-testing hugo-github-issue-8602
cd hugo-github-issue-8602
npm install
rm -rf public/ resources/ && hugo
npx serve
```

Notes:

- We use the [npm serve](https://www.npmjs.com/package/serve) package to serve the published site because `hugo server` can be a bit sluggish with larger sites.
- Running `hugo` while running an IDE with an integrated file watcher can produce misleading performance metrics for larger sites. Close the IDE, then run `hugo` from a native terminal.
- Finally, also in the interest of obtaining more accurate performance metrics, remove the public and resources directories before each run.

## Site Structure

There are 10 content types (sections):

Section Title|Content Pages|Section Pages|Paginator Pages|Aliases
:--|--:|--:|--:|--:|
10 Pages|10|1|0|1
20 Pages|20|1|1|1
30 Pages|30|1|2|1
40 Pages|40|1|3|1
50 Pages|50|1|4|1
60 Pages|60|1|5|1
70 Pages|70|1|6|1
80 Pages|80|1|7|1
90 Pages|90|1|8|1
10,000 Pages|10,000|1|999|1

Visit each section to see an example of the pagination format

## Expected Counts

- Pages: 10,461 (content pages + section pages + home page)
- Paginator pages: 1035
- Aliases: 10
