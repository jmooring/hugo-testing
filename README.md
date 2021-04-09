# Hugo GitHub Issue #7838

Details: <https://github.com/gohugoio/hugo/issues/7838>

Description: Failed to get translated string for language "art-x-language"

## Instructions

Clone this branch of the repository and build the site.

The `layouts/_default/single.html` template calls `i18n` twice, once for a singular translation, and once for a plural translation.

```bash
git clone --single-branch -b hugo-github-issue-7838 https://github.com/jmooring/hugo-testing hugo-github-issue-7838
cd hugo-github-issue-7838
hugo server
```

Results:

```text
WARN 2021/04/09 13:51:15 Failed to get translated string for language "art-x-kr" and ID "cat": %!s(<nil>)
WARN 2021/04/09 13:51:15 Failed to get translated string for language "art-x-kr" and ID "cat": %!s(<nil>)
WARN 2021/04/09 13:51:15 Failed to get translated string for language "art-x-tw" and ID "cat": %!s(<nil>)
WARN 2021/04/09 13:51:15 Failed to get translated string for language "art-x-tw" and ID "cat": %!s(<nil>)
```

Now comment out the Japanese and Korean sections in `config.toml` and run `hugo` again:

```text
WARN 2021/04/09 13:53:00 Failed to get translated string for language "art-x-tw" and ID "cat": %!s(<nil>)
WARN 2021/04/09 13:53:00 Failed to get translated string for language "art-x-tw" and ID "cat": %!s(<nil>)
```

Now do this:

```bash
rm i18n/jp.toml i18n/kr.toml
hugo
```

No warnings. I don't understand.
