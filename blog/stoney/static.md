# Static Site


Hugo is a Fast and Flexible Static Site Generator(SSG)
built with love by spf13 and friends in Go.

### Hugo
- Hugo site
http://gohugo.io
- Hugo Source
https://github.com/spf13/hugo


### TOML
* [Intro to TOML](http://npf.io/2014/08/intro-to-toml/)
* TOML(Tom's Obvious, Minimal Language),
[github](https://github.com/toml-lang/toml)
* [go package toml](https://godoc.org/github.com/BurntSushi/toml)
* [data interchange formats- CSV, XML, JSON*, BSON, YAML, HAML, TOML and others](http://dave.thehorners.com/tech-talk/random-tech/524-data-interchange-formats-csv-xml-json-bson-yaml-haml-toml-and-others)


### Markdown
* [Markdown] - Wikipedia
* [Mastering Markdown] - Overview for markdown
* [Dillinger] - Cloud-enabled, mobile-ready, offline-storage, AngularJS powered HTML5 Markdown editor
* [StackEdit](https://stackedit.io/editor) - Online Markdown Editor
* [CommonMark](http://commonmark.org/) - A strongly specified, highly compatible implementation of Markdown
* [Markdown: The Writing Tool for Software Developers](http://www.toptal.com/web/markdown-the-writing-tool-for-software-developers)


### AsciiDoc
* [AsciiDoc Home Page][http://www.methods.co.nz/asciidoc/] - Text based document generation
  - [VonC/asciidocgo](https://github.com/VonC/asciidocgo) - Like asciidoctor, but in Go
* O'Reilly [Atlas](https://atlas.oreilly.com/) - Push-Button Publishing, asciidoc


### Information
* [Hugo from scratch](http://zackofalltrades.com/notes/2014/05/hugo-from-scratch/)
* [Migrating to Hugo From Octopress](http://nathanleclaire.com/blog/2014/12/22/migrating-to-hugo-from-octopress/)
* [Migrating a blog (yes, this one!) from Wordpress to Hugo](http://justindunham.net/migrating-from-wordpress-to-hugo/)


### Operation
* Makefile for Hugo
```
# Makefile for hugo operation
all: usage

run r:
  hugo server -w

config c:
  vi config.toml

new n:
  hugo new post/new.md
  vi content/post/new.md

view v:
  xdg-open http://localhost:1313

update u:
  go get -u github.com/spf13/hugo

make m:
  vi Makefile

usage:
  @echo ""
  @echo "usage: make [r(un)|c(onfig)|n(ew)|v(iew)]"
  @echo " - run : execute a hugo server"
  @echo " - new : make a new post md file"
  @echo ""
```

[Markdown]:http://en.wikipedia.org/wiki/Markdown
[Mastering Markdown]:https://guides.github.com/features/mastering-markdown/
[Dillinger]:http://dillinger.io/
