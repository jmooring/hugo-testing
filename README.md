# Hugo Forum Topic #35184

Details: <https://discourse.gohugo.io/t/35184>

Description: Audit your published site for problems

## Instructions

Clone this branch of the repository and build the site.

```bash
git clone --single-branch -b hugo-forum-topic-35184 https://github.com/jmooring/hugo-testing hugo-forum-topic-35184
cd hugo-forum-topic-35184
```

Then run this command to audit the site:

```bash
HUGO_MINIFY_TDEWOLFF_HTML_KEEPCOMMENTS=true HUGO_ENABLEMISSINGTRANSLATIONPLACEHOLDERS=true hugo && grep -inorE "<\!-- raw HTML omitted -->|ZgotmplZ|\[i18n\]|\(<nil>\)|(&lt;nil&gt;)|hahahugo" public/
```

Tested with GNU Bash 5.0 / GNU grep 3.4.
