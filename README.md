# Hugo Testing

Every branch in this repository (excluding `master` and `scaffold`) is a unique Hugo test site, related to either a [Forum](https://discourse.gohugo.io/) topic or a [GitHub](https://github.com/gohugoio/hugo/) issue.

To download and test a specific branch:

```bash
git clone --single-branch --branch <name> https://github.com/jmooring/hugo-testing
cd <name>
hugo server
```

For example:

```bash
git clone --single-branch --branch hugo-forum-topic-99999 https://github.com/jmooring/hugo-testing
cd hugo-forum-topic-99999
hugo server
```
