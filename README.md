# Hugo GitHub Issue #14094

Details: <https://github.com/gohugoio/hugo/issues/14094>

Description: markup/asciidocext: Fix the outdir document attribute

## Setup

Note that the Java Runtime Environment (JRE) is required by the `asciidoctor-diagram-ditaamini` extension.

```text
sudo apt install ruby ruby-dev default-jre
gem install --user-install asciidoctor -v "2.0.26"
gem install --user-install asciidoctor-diagram -v "3.0.1"
gem install --user-install asciidoctor-diagram-ditaamini -v "1.0.3"
```

## Test

Clone this branch of the repository:

```text
git clone --single-branch -b hugo-github-issue-14094 https://github.com/jmooring/hugo-testing hugo-github-issue-14094
cd hugo-github-issue-14094
```

Then build the site using the site config file that corresponds to the relevant test cases in:

<https://github.com/gohugoio/hugo/blob/master/markup/asciidocext/asciidoc_integration_test.go>

```text
rm -rf public && hugo --config test-1.toml
rm -rf public && hugo --config test-2.toml
```

etc.
