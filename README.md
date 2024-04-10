# Hugo Forum Topic #49256

Details: <https://discourse.gohugo.io/t/49256>

Description: resources.Concat breaks my live reload

## Instructions

Clone this branch of the repository and build the site.

```text
git clone --single-branch -b hugo-forum-topic-49256 https://github.com/jmooring/hugo-testing hugo-forum-topic-49256
cd hugo-forum-topic-49256
hugo server
```

Open your browser's dev tools and view the console. You will see two log entries:

```text
This is assets/vendor/script1.js
This is assets/vendor/script2.js
```

Then, in a separate terminal, do this:

```text
echo "console.log('foo');" >> assets/vendor/script2.js
```

The page refreshes and the console updates as expected.

Then add some text to layouts/_default/home.html and save. The page refreshes as expected.
