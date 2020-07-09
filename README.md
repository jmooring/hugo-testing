# Hugo Forum Topic #26807

Details: <https://discourse.gohugo.io/t/26807>

Description: Grab card data from url

## Instructions

Clone this branch of the repository and build the site.

```bash
git clone --single-branch -b hugo-forum-topic-26807 https://github.com/jmooring/hugo-testing hugo-forum-topic-26807
cd hugo-forum-topic-26807
hugo server
```

## Notes

The build will initially fail due to the absence of a valid API key for [OpenGraph.io](https://www.opengraph.io/). Sign up for an account (no credit card required) to obtain an API key, then set `opengraph_io_api_key` in `config.toml`. Their free tier is limited to 100 requests per month.
