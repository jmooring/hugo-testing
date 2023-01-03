# Multilingual partials

By default, Hugo's partial templates are language agnostic. We have added some logic to this site so that partials can be language specific, if necessary.

With this directory structure, all languages will use the same partials:

```text
prebuild/layouts/partials//
├── articles.html
├── books.html
└── releases.html
```

With this directory structure, the German (de) site will use articles.de.html when building articles from data, and it will use the others for eveything else.

```text
prebuild/layouts/partials//
├── articles.de.html
├── articles.html
├── books.html
└── releases.html
```

This will allow you to pull in different data for each language.
