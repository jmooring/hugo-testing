# Hugo Forum Topic #52483

Details: <https://discourse.gohugo.io/t/52483>

Description: Multiple sites sharing the same navigation data

## Instructions

Clone this branch of the repository and build the site.

```text
git clone --single-branch -b hugo-forum-topic-52483 https://github.com/jmooring/hugo-testing hugo-forum-topic-52483
cd hugo-forum-topic-52483
hugo server
```

Note that the footer menu entries use relative URLs to point to local content.

Now stop the server and do this:

```text
mv content/capabilities content/xx
hugo server
```

Note that the footer menu entries now use absolute URLs pointing to content on the site specified by `parentSiteBaseURL` in the module's `params` configuration file.
