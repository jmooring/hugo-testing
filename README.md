# Hugo Forum Topic #56104

Details: <https://discourse.gohugo.io/t/56104>

Description: `module.mounts` overrides for theme and site behave differently

## Instructions

Clone this branch of the repository and build the site.

```text
git clone --single-branch -b hugo-forum-topic-56104 https://github.com/jmooring/hugo-testing hugo-forum-topic-56104
cd hugo-forum-topic-56104
hugo config mounts
```

Then build the site:

```text
hugo
```

Expected console warnings:

```text
WARN  /project-asset.txt
WARN  /theme-asset.txt
```

Actual console warnings:

```text
WARN  /project-asset.txt
```
