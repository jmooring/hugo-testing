# Hugo GitHub Issue #12107

Details: <https://github.com/gohugoio/hugo/issues/12107>

Description: multilingual: Shared resource discarded if same bundle does not exist in default content language

## Instructions

Clone this branch of the repository and build the site.

```text
git clone --single-branch -b hugo-github-issue-12107 https://github.com/jmooring/hugo-testing hugo-github-issue-12107
cd hugo-github-issue-12107
rm -rf public/ && hugo && tree public
```

Expected (v0.122.0)

```text
public/
├── de/
│   ├── s1/
│   │   ├── p1/
│   │   │   ├── a.txt      <-- this is missing in v0.123.1 see below
│   │   │   └── index.html
│   │   └── index.html
│   └── index.html
├── en/
│   ├── s1/
│   │   └── index.html
│   └── index.html
└── index.html
```

Actual (v0.123.1)

```text
public/
├── de/
│   ├── s1/
│   │   ├── p1/
│   │   │   └── index.html
│   │   └── index.html
│   └── index.html
├── en/
│   ├── s1/
│   │   └── index.html
│   └── index.html
└── index.html
```
