# Hugo Forum Topic #42817

Details: <https://discourse.gohugo.io/t/42817>

Description: Excluding Folders in Static

## Instructions

Clone this branch of the repository and build the site.

```text
git clone --single-branch -b hugo-forum-topic-42817 https://github.com/jmooring/hugo-testing hugo-forum-topic-42817
cd hugo-forum-topic-42817
```

Then run these commands and compare files in the root of public.

```text
rm -rf public && hugo && tree -a public
rm -rf public && hugo -e cs559 && tree -a public
rm -rf public && hugo -e cs800 && tree -a public
```
