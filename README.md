# Hugo Forum Topic #36724

Details: <https://discourse.gohugo.io/t/36724>

Description: Babel: Cannot find module

## Instructions

Clone this branch of the repository and build the site.

```bash
git clone --single-branch -b hugo-forum-topic-36724 https://github.com/jmooring/hugo-testing hugo-forum-topic-36724
cd hugo-forum-topic-36724
hugo server
```

Notes:

- The Babel configuration is within package.json.
- The [require function](https://nodejs.org/en/knowledge/getting-started/what-is-require/):

  > The rules of where require finds the files can be a little complex, but a simple rule of thumb is that if the file doesn't start with "./" or "/", then it is either considered a core module (and the local Node.js path is checked), or a dependency in the local node_modules folder. If the file starts with "./" it is considered a relative file to the file that called require. If the file starts with "/", it is considered an absolute path. NOTE: you can omit ".js" and require will automatically append it if needed. For more detailed information, see [the official docs](https://nodejs.org/docs/v0.4.2/api/modules.html#all_Together...).
