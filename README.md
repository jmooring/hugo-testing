# Hugo Forum Topic #48789

Details: <https://discourse.gohugo.io/t/48789>

Description: Subpage missing from section's page list when using 0.123.8

## Instructions

Clone this branch of the repository and build the site.

```text
git clone --single-branch -b hugo-forum-topic-48789 https://github.com/jmooring/hugo-testing hugo-forum-topic-48789
cd hugo-forum-topic-48789
npm ci
hugo server
```

Then visit <http://localhost:1313/docs/logs/> to see the problem.

You will see "Stdout" in the menu on the left, but that page is not shown in the content listing.
