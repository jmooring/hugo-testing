+++
title = '{{ replace .Name "-" " " | strings.FirstUpper }}'
date = {{ .Date }}
draft = false
description = '{{ printf "This is the description for %s." .Name  }}'
name = '{{ printf "This is the name for %s." .Name  }}'
+++
