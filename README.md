# Hugo Testing

## Overview

Each branch in this repository (excluding `master` and `scaffold`) is a unique [Hugo](https://gohugo.io/) test site, related to either a [forum](https://discourse.gohugo.io/) topic or a [GitHub](https://github.com/gohugoio/hugo/issues/) issue.

- The `master` branch is essentially empty, except for this README file.
- The `scaffold` branch is a template for each new branch.

A list of all branches in this repository is available [here](https://github.com/jmooring/hugo-testing/branches/all/).

## Usage

To download and test a specific branch:

```bash
git clone --single-branch -b <branch-name> https://github.com/jmooring/hugo-testing <branch-name>
cd <branch-name>
hugo server
```

For example:

```bash
git clone --single-branch -b hugo-forum-topic-99999 https://github.com/jmooring/hugo-testing hugo-forum-topic-99999
cd hugo-forum-topic-99999
hugo server
```

Or:

```bash
git clone --single-branch -b hugo-github-issue-99999 https://github.com/jmooring/hugo-testing hugo-github-issue-99999
cd hugo-github-issue-99999
hugo server
```
