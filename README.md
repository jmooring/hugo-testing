# Hugo Forum Topic #36590

Details: <https://discourse.gohugo.io/t/36590>

Description: 0.92: New warning when section has no index

## Instructions

Clone this branch of the repository and build the site.

```bash
git clone --single-branch -b hugo-forum-topic-36590 https://github.com/jmooring/hugo-testing hugo-forum-topic-36590
cd hugo-forum-topic-36590
hugo 
```

You will see this warning:

> WARN 2022/01/15 07:36:59 .File.Path on zero object. Wrap it in if or with: {{ with .File }}{{ .Path }}{{ end }}

To remove the warning either:

1. `hugo new content/post/_index.md`, or
2. Remove the call to `.RenderString` from layouts/_default/list.html
