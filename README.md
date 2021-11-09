# Hugo Forum Topic #35501

Details: <https://discourse.gohugo.io/t/35501>

Description: RSS URL or an alias

## Instructions

Clone this branch of the repository and build the site.

```bash
git clone --single-branch -b hugo-forum-topic-35501 https://github.com/jmooring/hugo-testing hugo-forum-topic-35501
cd hugo-forum-topic-35501
hugo server
```

## Details


TLDR: Configure a redirect on your production server.

A Hugo alias will not work because:

1. With Hugo, you can only create aliases with an `html` extension.
2. Even if you could create an alias for the `xml` file, the `xml` consumer (browser, aggregator, etc.) wouldn't honor the `meta http-equiv` redirect.

If you are looking for this output structure...

```text
public/
├── tags/
│   ├── foo/
│   │   ├── index.html
│   │   └── index.xml
│   └── mysql/
│       ├── index.html
│       └── index.xml
└── mysql_feed.xml   <-- Duplicate of (or redirect to) public/tags/mysql/index.xml
```

...then you should configure a redirect on your production server; do not try to do this via Hugo site configuration.

Having said that, you _can_ achieve this within Hugo, but you have to jump through a bunch of hoops:

- Configure a multilingual site with an artificial language
- Disable most of the [Page Kinds](https://gohugo.io/templates/section-templates/#page-kinds) for the artificial language
- Create a custom RSS template for the artificial language
- Use [`lange.Merge`](https://gohugo.io/functions/lang.merge/) within the custom template to fill in the content from the other language(s)
- Create a section page for the term, in the artificial language, specifying the final URL, and limiting the output format

Just... no.
