+++
title = 'Hugo GitHub Issue #11829'
linkTitle = 'Home'
date = 2023-12-23T17:49:26-08:00
draft = false
details = 'https://github.com/gohugoio/hugo/issues/11829'
description = "Indentation of YAML multiline strings is inconsistent"
+++

This is a fenced code block:

```yaml
# cluster_vm.yaml

resources:
  cloud: gcp
  instance_type: n2d-standard-16
  disk_size: 128

file_mounts:
  /data:
    source: gs://project-data-bucket/
    mode: MOUNT
  /home/analysis:
    source: gs://my-analysis-bucket/
    mode: MOUNT

setup: |
  pip install --upgrade pip
  conda env update -f /home/analysis/env.yaml  

run: |
  nohup jupyter-lab --no-browser --port 8888 &
```

And this is a paragraph after the fenced code block.
