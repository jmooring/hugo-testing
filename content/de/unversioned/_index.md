+++
title = 'Startseite'
details = 'https://discourse.gohugo.io/t/56516'
description = 'Gibt es ein Beispiel für die Verwendung des neuen mehrdimensionalen Inhaltsmodells?'
+++

Dies ist ein Beispiel für das mehrdimensionale Inhaltsmodell, das in Hugo [v0.153.0][] eingeführt wurde. Dieses Modell ermöglicht es, Inhalte gleichzeitig nach Sprachen, Rollen und Versionen zu organisieren. Dieses Beispiel verwendet zwei Dimensionen:

- Version: eine Softwaredokumentation, bei der mit jeder Version Seiten hinzugefügt, geändert oder entfernt werden.
- Sprache: Englisch und Deutsch, wobei Hugo jede fehlende deutsche Übersetzung mit der englischen Seite ergänzt. Jede dieser Seiten zeigt einen Hinweis an.

Jede Sprache und Version hat ein eigenes Inhaltsverzeichnis, zum Beispiel `content/de/v0.2.0`, das nur die Seiten enthält, die in dieser Version hinzugefügt, geändert oder übersetzt wurden. Die Mounts in `hugo.toml` führen diese Verzeichnisse zusammen:

- Die Mounts sind von der neuesten zur ältesten Version aufgeführt. Wenn mehrere Mounts dieselbe Seite für dieselbe Site bereitstellen, verwendet Hugo die Seite aus dem ersten Mount, sodass jede Version die neueste Fassung jeder Seite verwendet.
- Innerhalb jeder Version steht der deutsche Mount vor dem englischen Mount. Die deutschen Mounts gelten nur für die deutsche Site, die englischen Mounts für alle Sprachen. Wenn es für eine Seite keine deutsche Datei gibt, veröffentlicht Hugo die englische Datei auf der deutschen Site.

Die deutsche Übersetzung ist unvollständig:

- /posts/post-2 ist nicht übersetzt
- /docs/functions/variance ist für v0.2.0 übersetzt, aber nicht für die Änderungen in v0.3.0
- /docs/functions/standard-deviation ist nicht übersetzt
- /docs/functions/median ist nicht übersetzt

Versionsverlauf:

v0.1.0

- /docs/functions/average hinzugefügt
- /docs/functions/mean hinzugefügt

v0.2.0

- /docs/functions/variance hinzugefügt
- /docs/functions/mean geändert

v0.3.0

- /docs/functions/standard-deviation hinzugefügt
- /docs/functions/variance geändert
- /docs/functions/average entfernt

v0.4.0 (`defaultContentVersion`)

- /docs/functions/median hinzugefügt

[v0.153.0]: https://github.com/gohugoio/hugo/releases/tag/v0.153.0
