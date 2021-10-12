+++
title = '{{ replace .Name "-" " " | title }}'
date = {{ .Date }}
draft = false
+++

Values inserted from archetypes/default.md...

Variable|Value
:--|:--
`.File.Path`|{{ .File.Path }}
`.File.LogicalName`|{{ .File.LogicalName }}
`.File.TranslationBaseName`|{{ .File.TranslationBaseName }}
`.File.ContentBaseName`|{{ .File.ContentBaseName }}
`.File.BaseFileName`|{{ .File.BaseFileName }}
`.File.Ext`|{{ .File.Ext }}
`.File.Lang`|{{ .File.Lang }}
`.File.Dir`|{{ .File.Dir }}
`.File.UniqueID`|{{ .File.UniqueID }}
