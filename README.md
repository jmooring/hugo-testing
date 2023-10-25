# Hugo Forum Topic #46777

Details: <https://discourse.gohugo.io/t/46777>

Description: Changing taxonomy term page title

## Instructions

Clone this branch of the repository:

```text
git clone --single-branch -b hugo-forum-topic-46777 https://github.com/jmooring/hugo-testing hugo-forum-topic-46777
cd hugo-forum-topic-46777
```

In a development environment, when you are creating content and viewing the changes in real time, Hugo publishes content to the normal paths:

```text
hugo server
```

When you are ready to build your site for deployment, Hugo publishes content to the archive paths, creating a redirect from the original path to the archive path:

```text
rm -rf prebuild/public/ public/ && hugo -s prebuild && hugo
```

To see what you production site will look like when live:

```text
rm -rf prebuild/public/ public/ && hugo -s prebuild && hugo server -e production
```

With the above, changes that you make to content will not be shown unless you stop and restart the server using the same command.

## The important parts of this

```text
./
├── config/
│   ├── _default/
│   │   └── hugo.toml
│   └── production/
│       └── hugo.toml     <-- this is important
├── content/
│   ├── posts/            <-- this section will have the archive structure
│   │   ├── _index.md
│   │   ├── post-01.md
│   │   ├── post-02.md
│   │   ├── post-03.md
│   └── _index.md
├── layouts/
│   ├── _default/
│   │   ├── _markup/
│   │   │   └── render-link.html  <-- internal links will break without this
│   │   ├── baseof.html
│   │   ├── home.html
│   │   ├── list.html
│   │   ├── single.html
│   │   └── summary.html
│   ├── archive/
│   │   ├── day.html      <-- list all posts for the day
│   │   ├── month.html    <-- list all posts for the day
│   │   └── year.html     <-- list all posts for the day
│   ├── partials/
│   │   ├── archive/
│   │   │   ├── outline.html    <-- creates ordered list: year/month/day
│   │   │   └── widget.html     <-- creates a nifty nav widget
│   │   ├── css.html
│   │   └── menu.html
│   └── shortcodes/
│       └── archive/
│           ├── outline.html    <-- calls the same partial above
│           └── widget.html     <-- calls the same partial above
└── prebuild/
    ├── layouts/
    │   └── _default/
    │       └── single.html     <-- this is where the magic happens
    └── hugo.toml               <-- this is important
```

### config/production/hugo.toml

```toml
[[module.mounts]]
source = 'content'
target = 'content'
# replace "posts" with whatever you name your blog section; this is one of the clever bits
excludeFiles = 'posts/**/[!_]*.*md'

[[module.mounts]]
source = 'prebuild/public/content'
target = 'content'

[params.render_hooks.link]
errorLevel = 'error' # ignore (default), warning, or error (fails the build)
```

When we build site using the `-e production` flag, we ignore all files with and `.md` extension, with the exception of `_index.md` files. Content authors need to be able to create section pages, at the top level of the section in particular.

But if we ignore the `.md` files, where is the content coming from? The prebuild generates files with a `.markdown` extension, which Hugo knows is... markdown. So it's a bit of cheat, but works great.

### prebuild/hugo.toml

```toml
title = 'prebuild'
disableKinds = ['RSS','sitemap','taxonomy','term','section','home']

[params]
# whether to create a redirect from the original path to the archive path
createRedirect = true

[[module.mounts]]
# replace "posts" with whatever you name your blog section
source = '../content/posts'
target = 'content/posts'
```

### prebuild/layouts/_default/single.html

This is the one that does the heavy lifting.

### layouts/_default/_markup/render-link.html

Links between pages will break without this.
