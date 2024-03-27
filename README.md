# Hugo GitHub Issue #12314

Details: <https://github.com/gohugoio/hugo/issues/12314>

Description: Allow to pass Asciidoctor converter templates

## References

AsciiDoc converter templates:\
<https://docs.asciidoctor.org/asciidoctor/latest/convert/templates/>

AsciiDoc convertible contexts:\
<https://docs.asciidoctor.org/asciidoctor/latest/convert/contexts-ref/>

## Instructions

### Install Asciidoctor

Install Ruby, Asciidoctor, and the gems required for AsciiDoc converter templates:

```text
sudo apt install ruby ruby-dev
gem install --user-install asciidoctor concurrent-ruby tilt tilt-handlebars
```

Add this section to $HOME/.bashrc:

```text
# Set PATH to include $HOME/.local/share/gem/ruby/3.0.0/bin if it exists.
if [ -d "$HOME/.local/share/gem/ruby/3.0.0/bin" ];then
  PATH="$HOME/.local/share/gem/ruby/3.0.0/bin:$PATH"
fi
```

Test:

```text
source $HOME/.bashrc
asciidoctor --version
```

### Clone and test

```text
git clone --single-branch -b hugo-github-issue-12314 https://github.com/jmooring/hugo-testing hugo-github-issue-12314
cd hugo-github-issue-12314
hugo server
```

Then visit `http://localhost:1313/posts/post-1/`.
