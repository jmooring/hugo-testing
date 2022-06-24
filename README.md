# Hugo Forum Topic #39064

Details: <https://discourse.gohugo.io/t/39064>

Description: Extract exif data solution brainstorming

## Instructions

Clone this branch of the repository and build the site.

```bash
git clone --single-branch -b hugo-forum-topic-39064 https://github.com/jmooring/hugo-testing hugo-forum-topic-39064
cd hugo-forum-topic-39064
hugo server
```

Workflow:

1. Create leaf bundle

   ```bash
   hugo new content/photos/2022-06-24-post-title
   ```

2. Copy JPEG images to leaf bundle

3. Create data file

   ```bash
   cd content/photos/2022-06-24-post-title
   exiftool -json *.jpg > exif.json
   ```
