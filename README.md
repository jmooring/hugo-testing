# Hugo GitHub Issue #7982

Details: <https://github.com/gohugoio/hugo/issues/7982>

Description: Hugo cannot identity correct translation string when multiple variants of a language code is used

## Instructions

Clone this branch of the repository and build the site.

```text
git clone --single-branch -b hugo-github-issue-7982 https://github.com/jmooring/hugo-testing hugo-github-issue-7982
cd hugo-github-issue-7982
hugo
```

Expected result in console:

```text
WARN  "foo in en"
WARN  "foo in zh"
```

Actual result in console:

```text
WARN  "foo in en"
WARN  Failed to get translated string for language "zh" and ID "foo": %!s(<nil>)
WARN  "foo in zh-CN"
```

# [languages.zh-CN]
# contentDir = 'content/zh'
# languageCode = 'zh-CN'
# languageName = 'Mandarin'
# weight = 2
