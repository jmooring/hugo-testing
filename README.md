# Hugo Forum Topic #49094

Details: <https://discourse.gohugo.io/t/49094>

Description: Functional testing harness for templates / partials

## Instructions

Clone this branch of the repository and build the site.

```text
git clone --single-branch -b hugo-forum-topic-49094 https://github.com/jmooring/hugo-testing hugo-forum-topic-49094
cd hugo-forum-topic-49094
hugo-server
```

Run `hugo` to create a set of gold files in the public directory, then copy public/tests to assets/gold/tests. Do this once, after you are certain that the results as seen in the public directory are correct.

Run `hugo server` to test.
