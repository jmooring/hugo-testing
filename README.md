# Hugo Forum Topic #33718

Details: <https://discourse.gohugo.io/t/33718>

Description: Proper way to translate a theme

## Instructions

Clone this branch of the repository and build the site.

```bash
git clone --single-branch -b hugo-forum-topic-33718 https://github.com/jmooring/hugo-testing hugo-forum-topic-33718
cd hugo-forum-topic-33718
cat README.md
```

Notice that:

- The i18n directory does not contain a de.toml file
- The i18n/en.toml file only contains two translations

Now run:

```text
./i18n-add-misssing-keys.sh 
```

This script adds missing key/value pairs to i18n files, creating new files if needed. The new values are a single space instead of an empty string to prevent creation of duplicate keys if you run the script more than once.

Existing key/value pairs are not modified.

There must at least one content file per template for each language.
