+++
title = '{{ replace .File.ContentBaseName "-" " " | strings.FirstUpper }}'
date = {{ .Date }}
draft = false
tags = ['foo','bar']
+++
