# Hugo Forum Topic #29161

Details: <https://discourse.gohugo.io/t/29161>

Description: Splitting an article into multiple pages

## Instructions

Clone this branch of the repository and build the site.

```bash
git clone --single-branch -b hugo-forum-topic-29161 https://github.com/jmooring/hugo-testing hugo-forum-topic-29161
cd hugo-forum-topic-29161
hugo server
```

Notes:

- There are 9 posts in this test site. Post 8 is a multipage post; the others are single page posts.
- When including links and images in the content of multipage posts, the URLs must either be absolute (`http://example.com/foo`) or site-relative (`/foo`). Page-relative URLs will not work because the content is rendered within a paginated list template.
- The navigation interface at the bottom of each page of a multipage post can be a paginator, next/previous links, or both. See config.toml.

To create a multipage post:

1. Create a branch bundle:

    ```bash
    hugo new posts/my-post/_index.md
    ```

2. Edit `posts/my-post/_index.md`, adding a layout and summary to the front matter:

    ```toml
    +++
    title = "My Post"
    date = 2020-11-03T12:11:31-05:00
    draft = false
    layout = "multipage"
    summary = """
    This is the summary for your new multipage post. It can contain
    multiple lines if necessary.
    """
    +++
    ```

    Please note that this file does not contain any content.

3. Create the first page, `posts/my-post/foo.md`. The filename is irrelevant. The front matter should only include the page number.

    ```toml
    +++
    page_number = 1
    +++
    This is the content of page 1.
    ```

4. Create the second page, `posts/my-post/bar.md`. The filename is irrelevant. The front matter should only include the page number.

    ```toml
    +++
    page_number = 2
    +++
    This is the content of page 2.
    ```

5. Rinse and repeat...
