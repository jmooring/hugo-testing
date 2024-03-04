+++
title = '{{ replace .File.ContentBaseName "-" " " | strings.FirstUpper }}'
date = {{ .Date }}
draft = false
aliases = ['/foo/','/bar/','/baz']
+++
