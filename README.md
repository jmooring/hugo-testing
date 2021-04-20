# Hugo Forum Topic #32412

Details: <https://discourse.gohugo.io/t/32412>

Description: Get variable by string parameter

## Instructions

Clone this branch of the repository and build the site.

```bash
git clone --single-branch -b hugo-forum-topic-32412 https://github.com/jmooring/hugo-testing hugo-forum-topic-32412
cd hugo-forum-topic-32412
hugo server
```

Files of interest:

- config.toml
- layouts/_default/baseof.html (scratches set here)
- layouts/partials/footer.html (putting stuff into maps)
- layouts/_default/single.html (calls the partial)

View the bottom of any of the content pages to see the jsonified maps.
