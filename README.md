# Hugo Forum Topic #56112

Details: <https://discourse.gohugo.io/t/56112>

Description: Can't build website in Indonesian

## Instructions

Clone this branch of the repository and build the site.

```text
git clone --single-branch -b hugo-forum-topic-56112 https://github.com/jmooring/hugo-testing hugo-forum-topic-56112
cd hugo-forum-topic-56112
hugo server
```

## Notes

The translation tables are using the go-i18n JSON v1 format:

```json
[
  {
    "id": "foo",
    "translation": {
      "one": "foo_en_one",
      "other": "foo_en_other"
    }
  }
]
```

This works, but I would use the go-i18n JSON v2 format instead:

```json
{
  "foo": {
    "one": "foo_en_one",
    "other": "foo_en_other"
  }
}
```
