# Hugo Forum Topic #37302

Details: <https://discourse.gohugo.io/t/37302>

Description: How to know the section depth

## Instructions

Clone this branch of the repository and build the site.

```bash
git clone --single-branch -b hugo-forum-topic-37302 https://github.com/jmooring/hugo-testing hugo-forum-topic-37302
cd hugo-forum-topic-37302
hugo server
```

```text
content/
├── s1/
│   ├── s1-1/
│   │   ├── s1-1-1/
│   │   │   ├── foo.md    --> section depth = 3
│   │   │   └── _index.md --> section depth = 3
│   │   ├── foo.md        --> section depth = 2
│   │   └── _index.md     --> section depth = 2
│   ├── foo.md            --> section depth = 1
│   └── _index.md         --> section depth = 1
├── foo.md                --> section depth = 0
└── _index.md             --> section depth = 0
```
