# Hugo GitHub Issue #15149

Details: <https://github.com/gohugoio/hugo/issues/15149>

Description: Add css.ChromaStyles

## Instructions

Clone this branch of the repository and build the site.

```text
git clone --single-branch -b hugo-github-issue-15149 https://github.com/jmooring/hugo-testing hugo-github-issue-15149
cd hugo-github-issue-15149
hugo server
```

After opening the site, switch between light and dark modes and observe that the syntax highlighting adapts accordingly.

You can change the UI and behavior of the theme switcher by changing `params.theme.switcher` in the project configuration:

- `light-dark-system`: displays light, dark, and system radio buttons
- `light-dark`: displays light and dark radio buttons, ignoring system settings
- `system`: displays no UI, always uses system setting

Files of interest:

- `assets/css/main.css` (lines 1, 2, 23-27, 42-44)
- `assets/js/main.js`
- `assets/js/theme/light-dark-system.js`
- `assets/js/theme/light-dark.js`
- `assets/js/theme/system.js`
- `hugo.toml` (lines 7-12)
- `layouts/_partials/css.html`
- `layouts/_partials/js.html`
- `layouts/baseof.html` (lines 13-23)
