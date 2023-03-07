# Hugo Forum Topic #43346

Details: <https://discourse.gohugo.io/t/43346>

Description: Using hugo to render my Zettelkasten folder

## Notes

Assumptions:

1. The H1 headings in your markdown files do not contain double quotes.
2. All of your images are in the images directory.

> I have my own tag convention of form #[tag](tag.md), to tag notes with notes basically, and it has to be short while still standard markdown.

Because this is a markdown link (preceded by a hash mark), the markdown renderer converts it to an anchor element. If the destination (the bit inside the parentheses) does not resolve to a page, the resulting link will be broken.

When you build the site, you will see four warnings in the console. This is due to non-existent pages in your sample content (broken links).

## Instructions

Clone this branch of the repository.

```text
git clone --single-branch -b hugo-forum-topic-43346 https://github.com/jmooring/hugo-testing hugo-forum-topic-43346
cd hugo-forum-topic-43346
```

Make sure that get-content.sh has execute permissions, then run:

```text
./get-content.sh && hugo server
```

Your original files are in the zettelkasten directory, but they could be anywhere on your system... just change the source directory in the script.
