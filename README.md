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

Section Title|Content Pages|Section Pages|Pagers|Aliases
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

Visit each section to see an example of the pagination format.

## Expected Counts

- Pages: 10,461 (content pages + section pages + home page)
- Paginator pages (pagers): 1035
- Aliases: 10

## Format

There are two display formats: default and terse.

The "default" format:

- Always displays a link to the First pager
- Always displays a link to the Previous pager
- Always displays a link to the Next pager
- Always displays a link to the Last pager
- Displays links to a maximum of 5 pagers, 2 on either side of the link to the current pager

The "terse" format:

- Does not display a link to the First pager from the first pager
- Does not display a link to the Previous pager from the first pager
- Does not display a link to the Next pager from the last pager
- Does not display a link to the Last pager from the last pager
- Displays links to a maximum of 3 pagers, 1 on either side of the link to the current pager

To use the "default" format, these are equivalent:

   ```go-html-template
   {{ template "_internal/pagination" . }}
   {{ template "_internal/pagination" (dict "page" .) }}
   {{ template "_internal/pagination" (dict "page" . "format" "default") }}
   ```

To use the "terse" format:

   ```go-html-template
   {{ template "_internal/pagination" (dict "page" . "format" "terse") }}
   ```

This approach will allow us to add alternate formats in the future without changing the appearance of existing sites.

I based the formats on a review of pagination formats from Google, Bing, and Amazon. See <https://gist.github.com/jmooring/94e6e0bb0568ae5cdbae3372eb450111>.

## Style

While I have applied minimal styling to this test site, the [Pull Request](https://github.com/gohugoio/hugo/pull/8602) does not contain any CSS. Site creators continue to be responsible for styling.

## Validation

The output is valid HTML5 per <https://validator.w3.org/>.

The [Google Lighthouse](https://developers.google.com/web/tools/lighthouse) scores:

- Performance: 100
- Accessibility: 100
- Best Practices: 100
- SE0: 100
