+++
Categories = ["Development", "GoLang"]
Description = "hugo doc"
Tags = ["Development", "golang"]
date = "2015-02-26T14:57:48+09:00"
menu = "main"
title = "Hugo Documentation"
+++
This is the documentation of [Hugo](http://gohugo.io/) condensed into one long page. I did this to make the documentation easier to search and navigate. This page was automatically generated using a Python script using the documentation available at Hugo's GitHub repository.
https://github.com/hamoid/long-hugo-doc
# Index

## overview

  * <a href="#overview.introduction.md">Introduction</a>
  * <a href="#overview.quickstart.md">Quickstart</a>
  * <a href="#overview.installing.md">Installing Hugo</a>
  * <a href="#overview.usage.md">Using Hugo</a>
  * <a href="#overview.configuration.md">Configuration</a>
  * <a href="#overview.source-directory.md">Source Organization</a>

## content

  * <a href="#content.organization.md">Organization</a>
  * <a href="#content.front-matter.md">Front Matter</a>
  * <a href="#content.sections.md">Sections</a>
  * <a href="#content.types.md">Types</a>
  * <a href="#content.archetypes.md">Archetypes</a>
  * <a href="#content.ordering.md">Ordering</a>
  * <a href="#content.summaries.md">Summaries</a>
  * <a href="#content.example.md">Example</a>

## templates

  * <a href="#templates.overview.md">Overview</a>
  * <a href="#templates.go-templates.md">Go Template Primer</a>
  * <a href="#templates.functions.md">Functions</a>
  * <a href="#templates.variables.md">Variables</a>
  * <a href="#templates.content.md">Single Content</a>
  * <a href="#templates.list.md">List of Content</a>
  * <a href="#templates.homepage.md">Homepage</a>
  * <a href="#templates.terms.md">Taxonomy Terms</a>
  * <a href="#templates.views.md">Content Views</a>
  * <a href="#templates.partials.md">Partial Templates</a>
  * <a href="#templates.rss.md">RSS</a>
  * <a href="#templates.sitemap.md">Sitemap</a>
  * <a href="#templates.404.md">Custom 404 page</a>

## taxonomies

  * <a href="#taxonomies.overview.md">Overview</a>
  * <a href="#taxonomies.usage.md">Usage</a>
  * <a href="#taxonomies.displaying.md">Displaying</a>
  * <a href="#taxonomies.templates.md">Templates</a>
  * <a href="#taxonomies.ordering.md">Ordering</a>
  * <a href="#taxonomies.methods.md">Structure & Methods</a>

## extras

  * <a href="#extras.aliases.md">Aliases</a>
  * <a href="#extras.builders.md">Builders</a>
  * <a href="#extras.comments.md">Comments</a>
  * <a href="#extras.crossreferences.md">Cross-References</a>
  * <a href="#extras.livereload.md">LiveReload</a>
  * <a href="#extras.menus.md">Menus</a>
  * <a href="#extras.permalinks.md">Permalinks</a>
  * <a href="#extras.shortcodes.md">Shortcodes</a>
  * <a href="#extras.highlighting.md">Syntax Highlighting</a>
  * <a href="#extras.toc.md">Table of Contents</a>
  * <a href="#extras.urls.md">URLs</a>
<a name="overview.introduction.md"></a>

# Introduction to Hugo


## What is Hugo?

Hugo is a general-purpose website framework. Technically speaking, Hugo is
a static site generator. This means that, unlike systems like WordPress,
Ghost and Drupal, which run on your web server expensively building a page
every time a visitor requests one, Hugo does the building when you create
your content. Since websites are viewed far more often then they are
edited, Hugo is optimized for website viewing while providing a great
writing experience.

Sites built with Hugo are extremely fast and very secure. Hugo sites can
be hosted anywhere, including [Heroku][], [GoDaddy][], [DreamHost][],
[GitHub Pages][], [Amazon S3][] and [CloudFront][], and work well with CDNs.
Hugo sites run without dependencies on expensive runtimes like Ruby,
Python or PHP and without dependencies on any databases.

[Heroku]: https://www.heroku.com/
[GoDaddy]: https://www.godaddy.com/
[DreamHost]: http://www.dreamhost.com/
[GitHub Pages]: http://www.dreamhost.com/cloud/
[Amazon S3]: http://aws.amazon.com/s3/
[CloudFront]: http://aws.amazon.com/cloudfront/ "Amazon CloudFront"

We think of Hugo as the ideal website creation tool. With nearly instant
build times and the ability to rebuild whenever a change is made, Hugo
provides a very fast feedback loop. This is essential when you are
designing websites, but also very useful when creating content.

## What does Hugo do?

In technical terms, Hugo takes a source directory of Markdown files and
templates and uses these as input to create a complete website.

Hugo boasts the following features:

### General

  * Extremely fast build times (~1&nbsp;ms per page)
  * Completely cross platform: Runs on <i class="fa fa-apple"></i>&nbsp;Mac OS&nbsp;X, <i class="fa fa-linux"></i>&nbsp;Linux, <i class="fa fa-windows"></i>&nbsp;Windows, and more!
  * Easy [installation](#overview.installing.md)
  * Render changes [on the fly](#overview.usage.md) with [LiveReload](#extras.livereload.md) as you develop
  * Complete theme support
  * Host your site anywhere

### Organization

  * Straightforward [organization](#content.organization.md)
  * Support for [website sections](#content.sections.md)
  * Completely customizable [URLs](#extras.urls.md)
  * Support for configurable [taxonomies](#indexes.overview.md) which includes categories and tags.  Create your own custom organization of content
  * Ability to [sort content](#content.ordering.md) as you desire
  * Automatic [table of contents](#extras.toc.md) generation
  * Dynamic menu creation
  * [Pretty URLs](#extras.urls.md) support
  * [Permalink](#extras.permalinks.md) pattern support
  * [Aliases](#extras.aliases.md) (redirects)

### Content

  * Content written in [Markdown](#content.example.md)
  * Support for TOML, YAML and JSON metadata in [frontmatter](#content.front-matter.md)
  * Completely [customizable homepage](#layout.homepage.md)
  * Support for multiple [content types](#content.types.md)
  * Automatic and user defined [summaries](#content.summaries.md)
  * [Shortcodes](#extras.shortcodes.md) to enable rich content inside of Markdown
  * ["Minutes to Read"](#layout.variables.md) functionality
  * ["Wordcount"](#layout.variables.md) functionality

### Additional Features

  * Integrated [Disqus](https://disqus.com/) comment support
  * Automatic [RSS](#layout.rss.md) creation
  * Support for [Go](http://golang.org/pkg/html/template/), [Amber](https://github.com/eknkc/amber) and [Ace](http://ace.yoss.si/) HTML templates
  * Syntax [highlighting](#extras.highlighting.md) powered by [Pygments](http://pygments.org/)

See what's coming next in the [roadmap](#meta.roadmap.md).

## Who should use Hugo?

Hugo is for people that prefer writing in a text editor over
a browser.

Hugo is for people who want to hand code their own website without
worrying about setting up complicated runtimes, dependencies and
databases.

Hugo is for people building a blog, company site, portfolio, tumblog,
documentation, single page site or a site with thousands of
pages.

## Why did you write Hugo?

I wrote Hugo ultimately for a few reasons. First, I was disappointed with
WordPress, my then website solution. It rendered slowly. I couldn't create
content as efficiently as I wanted to and needed to be online to write
posts. The constant security updates and the horror stories of people's
hacked blogs. I hated how content was written in HTML instead of the much
simpler Markdown. Overall, I felt like it got in my way more than it helped
me from writing great content.

I looked at existing static site generators like [Jekyll][], [Middleman][] and [nanoc][].
All had complicated dependencies to install and took far longer to render
my blog with hundreds of posts than I felt was acceptable. I wanted
a framework to be able to get rapid feedback while making changes to the
templates, and the 5+-minute render times was just too slow. In general,
they were also very blog minded and didn't have the ability to have
different content types and flexible URLs.

[Jekyll]: http://jekyllrb.com/
[Middleman]: https://middlemanapp.com/
[nanoc]: http://nanoc.ws/

I wanted to develop a fast and full-featured website framework without
dependencies. The [Go language][] seemed to have all of the features I needed
in a language. I began developing Hugo in Go and fell in love with the
language. I hope you will enjoy using (and contributing to) Hugo as much
as I have writing it.

[Go language]: http://golang.org/ "The Go Programming Language"

## Next Steps

 * [Install Hugo](#overview.installing.md)
 * [Quick start](#overview.quickstart.md)
 * [Join the Mailing List](#community.mailing-list.md)
 * [Star us on GitHub](http://github.com/spf13/hugo)
 * [Discussion Forum](http://discuss.gohugo.io)

<a name="overview.quickstart.md"></a>

# Hugo Quickstart Guide


> _Note: This quickstart depends on features introduced in Hugo v0.11.  If you have an earlier version of Hugo, you will need to [upgrade](#overview.installing.md) before proceeding._

## Step 1. Install Hugo

Go to [Hugo Releases](https://github.com/spf13/hugo/releases) and download the
appropriate version for your OS and architecture.

Save the main executable as `hugo` (or `hugo.exe` on Windows) somewhere in your `PATH` as we will be using it in the next step.

More complete instructions are available at [Installing Hugo](#overview.installing.md).

## Step 2. Have Hugo Create a site for you

Hugo has the ability to create a skeleton site:

    $ hugo new site /path/to/site

For the rest of the operations, we will be executing all commands from within the site directory.

    $ cd /path/to/site

The new site will have the following structure

      ▸ archetypes/
      ▸ content/
      ▸ layouts/
      ▸ static/
        config.toml

Currently the site doesn’t have any content, nor is it configured.

## Step 3. Create Some Content

Hugo also has the ability to create a skeleton content page:

    $ hugo new about.md

A new file is now created in `content/` with the following contents:

```
+++
date = "2015-01-08T08:36:54-07:00"
draft = true
title = "about"

+++

```

Notice the date is automatically set to the moment you created the content.

Place some content in Markdown format below the `+++` in this file.
For example:

```markdown
## A headline

Some Content
```

For fun, let’s create another piece of content and place some Markdown in it as well.

    $ hugo new post/first.md

The new file is located at `content/post/first.md`

We still lack any templates to tell us how to display the content.

## Step 4. Install some themes

Hugo has rich theme support and a growing set of themes to choose from:

```bash
$ git clone --recursive https://github.com/spf13/hugoThemes themes
```

## Step 5. Run Hugo

Hugo contains its own high-performance web server. Simply run `hugo
server` and Hugo will find an available port and run a server with
your content:

    $ hugo server --theme=hyde --buildDrafts
    2 pages created
    0 tags created
    0 categories created
    in 5 ms
    Serving pages from exampleHugoSite/public
    Web Server is available at http://localhost:1313
    Press ctrl+c to stop

We specified two options here:

 * `--theme` to pick which theme;
 * `--buildDrafts` because we want to display our content, both set to draft status.

To learn about what other options hugo has, run:

    $ hugo help

To learn about the server options:

    $ hugo help server

## Step 6. Edit Content

Not only can Hugo run a server, but it can also watch your files for
changes and automatically rebuild your site. Hugo will then
communicate with your browser and automatically reload any open page.
This even works in mobile browsers.

Stop the Hugo process by hitting <kbd>Ctrl</kbd>+<kbd>C</kbd>. Then run the following:

    $ hugo server --theme=hyde --buildDrafts --watch
    2 pages created
    0 tags created
    0 categories created
    in 5 ms
    Watching for changes in exampleHugoSite/content
    Serving pages from exampleHugoSite/public
    Web Server is available at http://localhost:1313
    Press ctrl+c to stop

Open your [favorite editor](http://vim.spf13.com), edit and save your content, and watch as Hugo rebuilds and reloads automatically.

It’s especially productive to leave a browser open on a second monitor
and just glance at it whenever you save. You don’t even need to tab to
your browser. Hugo is so fast that the new site will be there before
you can look at the browser in most cases.

Change and save this file. Notice what happened in your terminal:

    Change detected, rebuilding site

    2 pages created
    0 tags created
    0 categories created
    in 5 ms

## Step 7. Have fun

The best way to learn something is to play with it.

Things to try:

 * Add a [new content file](#content.organization.md)
 * Create a [new section](#content.sections.md)
 * Modify [a template](#layout.templates.md)
 * Create content with [TOML front matter](#content.front-matter.md)
 * Define your own field in [front matter](#content.front-matter.md)
 * Display that [field in the template](#layout.variables.md)
 * Create a [new content type](#content.types.md)
<a name="overview.installing.md"></a>

# Installing Hugo


Hugo is written in Go with support for multiple platforms.

The latest release can be found at [Hugo Releases](https://github.com/spf13/hugo/releases).
We currently build for <i class="fa fa-windows"></i>&nbsp;Windows,
<i class="fa fa-linux"></i>&nbsp;Linux,
<i class="fa freebsd-19px"></i>&nbsp;FreeBSD
and <i class="fa fa-apple"></i>&nbsp;OS&nbsp;X
for x64 and i386 architectures.

## Installing Hugo (binary)

Installation is very easy. Simply download the appropriate version for your
platform from [Hugo Releases](https://github.com/spf13/hugo/releases).
Once downloaded it can be run from anywhere. You don't need to install
it into a global location. This works well for shared hosts and other systems
where you don't have a privileged account.

Ideally, you should install it somewhere in your `PATH` for easy use.
`/usr/local/bin` is the most probable location.

On OS&nbsp;X, if you have [Homebrew](http://brew.sh), installation is even
easier: just run `brew install hugo`.

### Installing Pygments (optional)

The Hugo executable has one *optional* external dependency for source code highlighting (Pygments).

If you want to have source code highlighting using the [highlight shortcode](#extras.highlighting.md),
you need to install the Python-based Pygments program. The procedure is outlined on the [Pygments home page](http://pygments.org).

## Upgrading Hugo

Upgrading Hugo is as easy as downloading and replacing the executable you’ve
placed in your `PATH`.


## Installing from source

### Dependencies

* Git
* Go 1.1+ (Go 1.4+ on Windows, see Go [Issue #8090](https://code.google.com/p/go/issues/detail?id=8090))
* Mercurial
* Bazaar

### Get directly from GitHub

    $ export GOPATH=$HOME/go
    $ go get -v github.com/spf13/hugo

`go get` will then fetch Hugo and all its dependent libraries to your
`$GOPATH/src` directory, and compile everything into the final `hugo`
(or `hugo.exe`) executable, which you will find sitting in the
`$GOPATH/bin/hugo` directory, all ready to go!

## Contributing

Please see the [contributing guide](#doc.contributing.md).
<a name="overview.usage.md"></a>

# Using Hugo


Make sure either `hugo` is in your `PATH` or provide a path to it.

    $ hugo help
    A Fast and Flexible Static Site Generator
    built with love by spf13 and friends in Go.

    Complete documentation is available at http://gohugo.io

    Usage:
      hugo [flags]
      hugo [command]

    Available Commands:
      server                    Hugo runs its own webserver to render the files
      version                   Print the version number of Hugo
      check                     Check content in the source directory
      benchmark                 Benchmark hugo by building a site a number of times
      new [path]                Create new content for your site
      help [command]            Help about any command

     Available Flags:
      -b, --baseUrl="": hostname (and path) to the root eg. http://spf13.com/
      -D, --buildDrafts=false: build content marked as draft
      -F, --buildFuture=false: build content with PublishDate in the future
          --config="": config file (default is path/config.yaml|json|toml)
      -d, --destination="": filesystem path to write files to
          --disableRSS=false: Do not build RSS files
          --disableSitemap=false: Do not build Sitemap file
          --log=false: Enable Logging
          --logFile="": Log File path (if set, logging enabled automatically)
      -s, --source="": filesystem path to read files relative from
          --stepAnalysis=false: display memory and timing of different steps of the program
      -t, --theme="": theme to use (located in /themes/THEMENAME/)
          --uglyUrls=false: if true, use /filename.html instead of /filename/
      -v, --verbose=false: verbose output
          --verboseLog=false: verbose logging
      -w, --watch=false: watch filesystem for changes and recreate as needed

    Use "hugo help [command]" for more information about that command.

## Common Usage Example

The most common use is probably to run `hugo` with your current
directory being the input directory.

    $ hugo
    > X pages created
      in 8 ms

If you are working on things and want to see the changes
immediately, tell Hugo to watch for changes.

Hugo will watch the filesystem for changes, rebuild your site as soon as a file
is saved.

    $ hugo -s ~/mysite --watch
       28 pages created
       in 18 ms
       Watching for changes in /Users/spf13/Code/hugo/docs/content
       Press ctrl+c to stop

Hugo can even run a server and create your site at the same time! Hugo
implements [LiveReload](#extras.livereload.md) technology to automatically reload any open pages in
all browsers (including mobile).

    $ hugo server -ws ~/mysite
       Watching for changes in /Users/spf13/Code/hugo/docs/content
       Web Server is available at http://localhost:1313
       Press ctrl+c to stop
       28 pages created
       0 tags created
       in 18 ms

<a name="overview.configuration.md"></a>

# Configuring Hugo


The directory structure and templates provide the majority of the
configuration for a site. In fact, a config file isn't even needed for many
websites since the defaults follow commonly used patterns.

Hugo expects to find the config file in the root of the source directory and
will look there first for a `config.toml` file. If none is present, it will
then look for a `config.yaml` file, followed by a `config.json` file.

The config file is a site-wide config. The config file provides directions to
hugo on how to build the site as well as site-wide parameters and menus.

## Examples

The following is an example of a typical yaml config file:

    ---
    baseurl: "http://yoursite.example.com/"
    ...

The following is an example of a toml config file with some of the default values. Values under `[params]` will populate the `.Site.Params` variable for use in templates:

    contentdir = "content"
    layoutdir = "layouts"
    publishdir = "public"
    builddrafts = false
    baseurl = "http://yoursite.example.com/"
    canonifyurls = true

    [indexes]
      category = "categories"
      tag = "tags"

    [params]
      description = "Tesla's Awesome Hugo Site"
      author = "Nikola Tesla"

Here is a yaml configuration file which sets a few more options

    ---
    baseurl: "http://yoursite.example.com/"
    title: "Yoyodyne Widget Blogging"
    footnotereturnlinkcontents: "↩"
    permalinks:
      post: /:year/:month/:title/
    params:
      Subtitle: "Spinning the cogs in the widgets"
      AuthorName: "John Doe"
      GitHubUser: "spf13"
      ListOfFoo:
        - "foo1"
        - "foo2"
      SidebarRecentLimit: 5
    ...

## Configure Blackfriday rendering

[Blackfriday](https://github.com/russross/blackfriday) is the [Markdown](http://daringfireball.net/projects/markdown/) rendering engine used in Hugo. The Blackfriday configuration in Hugo is mostly a set of sane defaults that should fit most use cases.

But Hugo does expose some options---as listed in the table below, matched with the corresponding flag in the [Blackfriday source](https://github.com/russross/blackfriday/blob/master/html.go):

<table class="table table-bordered">
<thead>
<tr>
<th>Flag</th><th>Default</th><th>Blackfriday flag</th>
</tr>
</thead>

<tbody>
<tr>
<td><code>angledQuotes</code></td>
<td><code>false</code></td>
<td><code>HTML_SMARTYPANTS_ANGLED_QUOTES</code></td>
</tr>
<tr>
<td class="purpose-title">Purpose:</td>
<td class="purpose-description" colspan="2">Enable smart angled double quotes <small>(e.g.&nbsp;<code>"Hugo"</code> renders to «Hugo» instead of “Hugo”)</small></td>
</tr>

<tr>
<td><code>plainIdAnchors</code></td>
<td><code>false</code></td>
<td><code>FootnoteAnchorPrefix</code> and <code>HeaderIDSuffix</code></td>
</tr>
<tr>
<td class="purpose-title">Purpose:</td>
<td class="purpose-description" colspan="2">If <code>true</code>, then header and footnote IDs are generated without the document ID <small>(e.g.&nbsp;<code>#my-header</code> instead of <code>#my-header:bec3ed8ba720b9073ab75abcf3ba5d97</code>)</small></td>
</tr>
</tbody>
</table>


**Note** that these flags must be grouped under the `blackfriday` key and can be set on **both site and page level**. If set on page, it will override the site setting.  Example:

<table class="table">
<tr>
<th>TOML</th><th>YAML</th>
</tr>
<tr>
<td><pre><code>[blackfriday]
    angledQuotes = true
    plainIdAnchors = true
</code></pre></td>
<td><pre><code>blackfriday:
  angledQuotes: true
  plainIdAnchors: true
</code></pre></td>
</tr>
</table>

## Notes

Config changes are not reflected with [LiveReload](#extras.livereload.md).

Please restart `hugo server --watch` whenever you make a config change.
<a name="overview.source-directory.md"></a>

# Source Organization


Hugo takes a single directory and uses it as the input for creating a complete
website.


The top level of a source directory will typically have the following elements:

    ▸ archetypes/
    ▸ content/
    ▸ layouts/
    ▸ static/
    ▸ themes/
      config.toml

Learn more about the different directories and what their purpose is:

* [config](#overview.configuration.md)
* [archetypes](#content.archetypes.md)
* [content](#content.organization.md)
* [layouts](#layout.overview.md)
* [static](#themes.creation#toc_4.md)
* [themes](#themes.overview.md)


## Example

An example directory may look like:

    .
    ├── config.toml
    ├── archetypes
    |   └── default.md
    ├── content
    |   ├── post
    |   |   ├── firstpost.md
    |   |   └── secondpost.md
    |   └── quote
    |   |   ├── first.md
    |   |   └── second.md
    ├── layouts
    |   ├── _default
    |   |   ├── single.html
    |   |   └── list.html
    |   ├── partials
    |   |   ├── header.html
    |   |   └── footer.html
    |   ├── taxonomies
    |   |   ├── category.html
    |   |   ├── post.html
    |   |   ├── quote.html
    |   |   └── tag.html
    |   ├── post
    |   |   ├── li.html
    |   |   ├── single.html
    |   |   └── summary.html
    |   ├── quote
    |   |   ├── li.html
    |   |   ├── single.html
    |   |   └── summary.html
    |   ├── shortcodes
    |   |   ├── img.html
    |   |   ├── vimeo.html
    |   |   └── youtube.html
    |   ├── index.html
    |   └── sitemap.xml
    ├── themes
    |   ├── hyde
    |   └── doc
    └── static
        ├── css
        └── js

This directory structure tells us a lot about this site:

1. The website intends to have two different types of content: posts and quotes.
2. It will also apply two different indexes to that content: categories and tags.
3. It will be displaying content in 3 different views: a list, a summary and a full page view.
<a name="content.organization.md"></a>

# Content Organization


Hugo uses Markdown files with headers commonly called the *front matter*. Hugo
respects the organization that you provide for your content to minimize any
extra configuration, though this can be overridden by additional configuration
in the front matter.

## Organization

In Hugo, the content should be arranged in the same way they are intended for
the rendered website. Without any additional configuration, the following will
just work. Hugo supports content nested at any level. The top level is special
in Hugo and is used as the [section](#content.sections.md).

    .
    └── content
        ├── post
        |   ├── firstpost.md   // <- http://1.com/post/firstpost/
        |   ├── happy
        |   |   └── ness.md    // <- http://1.com/post/happy/ness/
        |   └── secondpost.md  // <- http://1.com/post/secondpost/
        └── quote
            ├── first.md       // <- http://1.com/quote/first/
            └── second.md      // <- http://1.com/quote/second/

**Here's the same organization run with `hugo --uglyUrls`**

    .
    └── content
        ├── post
        |   ├── firstpost.md   // <- http://1.com/post/firstpost.html
        |   ├── happy
        |   |   └── ness.md    // <- http://1.com/post/happy/ness.html
        |   └── secondpost.md  // <- http://1.com/post/secondpost.html
        └── quote
            ├── first.md       // <- http://1.com/quote/first.html
            └── second.md      // <- http://1.com/quote/second.html

## Destinations

Hugo believes that you organize your content with a purpose. The same structure
that works to organize your source content is used to organize the rendered
site. As displayed above, the organization of the source content will be
mirrored in the destination.

There are times when one would need more control over their content. In these
cases, there are a variety of things that can be specified in the front matter
to determine the destination of a specific piece of content.

The following items are defined in order, latter items in the list will override
earlier settings.

### filename
This isn't in the front matter, but is the actual name of the file minus the
extension. This will be the name of the file in the destination.

### slug
Defined in the front matter, the slug can take the place of the filename for the
destination.

### filepath
The actual path to the file on disk. Destination will create the destination
with the same path. Includes [section](#content.sections.md).

### section
section can be provided in the front matter overriding the section derived from
the source content location on disk. See [section](#content.sections.md).

### path
path can be provided in the front matter. This will replace the actual
path to the file on disk. Destination will create the destination with the same
path. Includes [section](#content.sections.md).

### url
A complete URL can be provided. This will override all the above as it pertains
to the end destination. This must be the path from the baseurl (starting with a "/").
When a url is provided, it will be used exactly. Using url will ignore the
`--uglyUrls` setting.


## Path breakdown in Hugo

### Content

    .             path           slug
    .       ⊢-------^----⊣ ⊢------^-------⊣
    content/extras/indexes/category-example/index.html


    .       section              slug
    .       ⊢--^--⊣        ⊢------^-------⊣
    content/extras/indexes/category-example/index.html


    .       section  slug
    .       ⊢--^--⊣⊢--^--⊣
    content/extras/indexes/index.html

### Destination


               permalink
    ⊢--------------^-------------⊣
    http://spf13.com/projects/hugo


       baseUrl       section  slug
    ⊢-----^--------⊣ ⊢--^---⊣ ⊢-^⊣
    http://spf13.com/projects/hugo


       baseUrl       section          slug
    ⊢-----^--------⊣ ⊢--^--⊣        ⊢--^--⊣
    http://spf13.com/extras/indexes/example


       baseUrl            path       slug
    ⊢-----^--------⊣ ⊢------^-----⊣ ⊢--^--⊣
    http://spf13.com/extras/indexes/example


       baseUrl            url
    ⊢-----^--------⊣ ⊢-----^-----⊣
    http://spf13.com/projects/hugo


       baseUrl               url
    ⊢-----^--------⊣ ⊢--------^-----------⊣
    http://spf13.com/extras/indexes/example



**section** = which type the content is by default

* based on content location
* front matter overrides

**slug** = name.ext or name/

* based on content-name.md
* front matter overrides

**path** = section + path to file excluding slug

* based on path to content location


**url** = relative URL

* defined in front matter
* overrides all the above

<a name="content.front-matter.md"></a>

# Front Matter


The **front matter** is one of the features that gives Hugo its strength. It enables
you to include the meta data of the content right with it. Hugo supports a few
different formats, each with their own identifying tokens.

Supported formats:

  * **[TOML][]**, identified by '`+++`'.
  * **[YAML][]**, identified by '`---`'.
  * **[JSON][]**, a single JSON object which is surrounded by '`{`' and '`}`', each on their own line.

[TOML]: https://github.com/toml-lang/toml "Tom's Obvious, Minimal Language"
[YAML]: http://www.yaml.org/ "YAML Ain't Markup Language"
[JSON]: http://www.json.org/ "JavaScript Object Notation"

### TOML Example

    +++
    title = "spf13-vim 3.0 release and new website"
    description = "spf13-vim is a cross platform distribution of vim plugins and resources for Vim."
    tags = [ ".vimrc", "plugins", "spf13-vim", "vim" ]
    date = "2012-04-06"
    categories = [
      "Development",
      "VIM"
    ]
    slug = "spf13-vim-3-0-release-and-new-website"
    +++

    Content of the file goes Here

### YAML Example

    ---
    title: "spf13-vim 3.0 release and new website"
    description: "spf13-vim is a cross platform distribution of vim plugins and resources for Vim."
    tags: [ ".vimrc", "plugins", "spf13-vim", "vim" ]
    date: "2012-04-06"
    categories:
      - "Development"
      - "VIM"
    slug: "spf13-vim-3-0-release-and-new-website"
    ---

    Content of the file goes Here

### JSON Example

    {
        "title": "spf13-vim 3.0 release and new website",
        "description": "spf13-vim is a cross platform distribution of vim plugins and resources for Vim.",
        "tags": [ ".vimrc", "plugins", "spf13-vim", "vim" ],
        "date": "2012-04-06",
        "categories": [
            "Development",
            "VIM"
        ],
        "slug": "spf13-vim-3-0-release-and-new-website",
    }

    Content of the file goes Here

## Variables

There are a few predefined variables that Hugo is aware of and utilizes. The user can also create
any variable they want to. These will be placed into the `.Params` variable available to the templates.
Field names are always normalized to lowercase (e.g. `camelCase: true` is available as `.Params.camelcase`).

### Required variables

* **title** The title for the content
* **description** The description for the content
* **date** The date the content will be sorted by
* **taxonomies** These will use the field name of the plural form of the index (see tags and categories above)

### Optional variables

* **redirect** Mark the post as a redirect post
* **draft** If true, the content will not be rendered unless `hugo` is called with `--buildDrafts`
* **publishdate** If in the future, content will not be rendered unless `hugo` is called with `--buildFuture`
* **type** The type of the content (will be derived from the directory automatically if unset)
* **weight** Used for sorting
* **markup** *(Experimental)* Specify `"rst"` for reStructuredText (requires
            `rst2html`) or `"md"` (default) for Markdown
* **slug** The token to appear in the tail of the URL,
   *or*<br>
* **url** The full path to the content from the web root.<br>

*If neither `slug` or `url` is present, the filename will be used.*

## Configure Blackfriday rendering

It's possible to set some options for Markdown rendering in the page's front matter, as an override to the site wide configuration.

See [Configuration]({{< ref "overview/configuration.md#configure-blackfriday-rendering" >}}) for more.

<a name="content.sections.md"></a>

# Sections


Hugo believes that you organize your content with a purpose. The same structure
that works to organize your source content is used to organize the rendered
site (see [Organization](#content.organization.md)). Following this pattern Hugo
uses the top level of your content organization as **the Section**.

The following example site uses two sections, "post" and "quote".

    .
    └── content
        ├── post
        |   ├── firstpost.md       // <- http://1.com/post/firstpost/
        |   ├── happy
        |   |   └── ness.md   // <- http://1.com/post/happy/ness/
        |   └── secondpost.md      // <- http://1.com/post/secondpost/
        └── quote
            ├── first.md           // <- http://1.com/quote/first/
            └── second.md          // <- http://1.com/quote/second/


## Section Lists

Hugo will automatically create pages for each section root that list all
of the content in that section. See [List Templates](#templates.list.md)
for details on customizing the way they appear.

## Sections and Types

By default everything created within a section will use the content type
that matches the section name.

Section defined in the front matter have the same impact.

To change the type of a given piece of content, simply define the type
in the front matter.

If a layout for a given type hasn't been provided, a default type template will
be used instead provided it exists.


<a name="content.types.md"></a>

# Content Types


Hugo has full support for different types of content. A content type can have a
unique set of meta data, template and can be automatically created by the new
command through using content [archetypes](#content.archetypes.md).

A good example of when multiple types are needed is to look at [Tumblr](https://www.tumblr.com/). A piece
of content could be a photo, quote or post, each with different meta data and
rendered differently.

## Assigning a content type

Hugo assumes that your site will be organized into [sections](#content.sections.md)
and each section will use the corresponding type. If you are taking advantage of
this, then each new piece of content you place into a section will automatically
inherit the type.

Alternatively, you can set the type in the meta data under the key "`type`".


## Creating new content of a specific type

Hugo has the ability to create a new content file and populate the front matter
with the data set corresponding to that type. Hugo does this by utilizing
[archetypes](#content.archetypes.md).

To create a new piece of content, use:

    hugo new relative/path/to/content.md

For example, if I wanted to create a new post inside the post section, I would type:

    hugo new post/my-newest-post.md


## Defining a content type

Creating a new content type is easy in Hugo. You simply provide the templates and archetype
that the new type will use. You only need to define the templates, archetypes and/or views
unique to that content type. Hugo will fall back to using the general templates and default archetype
whenever a specific file is not present.

*Remember, all of the following are optional:*

### Create Type Directory
Create a directory with the name of the type in `layouts`. Type is always singular.  *E.g. `/layouts/post`*.

### Create single template
Create a file called `single.html` inside your directory. *E.g. `/layouts/post/single.html`*.

### Create list template
Create a file called `list.html` inside your directory. *E.g. `/layouts/post/list.html`*.

### Create views
Many sites support rendering content in a few different ways, for instance,
a single page view and a summary view to be used when displaying a list
of contents on a single page. Hugo makes no assumptions here about how you want
to display your content, and will support as many different views of a content
type as your site requires. All that is required for these additional views is
that a template exists in each layouts/`TYPE` directory with the same name.

### Create a corresponding archetype

Create a file called <code><em>type</em>.md</code> in the `/archetypes` directory. *E.g. `/archetypes/post.md`*.

More details about archetypes can be found at the [archetypes docs](#content.archetypes.md).
<a name="content.archetypes.md"></a>

# Archetypes


Hugo v0.11 introduced the concept of a content builder. Using the
command: <code>hugo new <em>[relative new content path]</em></code>,
you can start a content file with the date and title automatically set.
While this is a welcome feature, active writers need more.

Hugo presents the concept of archetypes, which are archetypal content files
with pre-configured [front matter](content/front-matter) which will
populate each new content file whenever you run the `hugo new` command.


## Example

### Step 1. Creating an archetype

In this example scenario, we have a blog with a single content type (blog post).
We will use ‘tags’ and ‘categories’ for our taxonomies, so let's create an archetype file with ‘tags’ and ‘categories’ pre-defined, as follows:

#### archetypes/default.md

    +++
    tags = ["x", "y"]
    categories = ["x", "y"]
    +++

> __CAVEAT:__  Some editors (e.g. Sublime, Emacs) do not insert an EOL (end-of-line) character at the end of the file (i.e. EOF).  If you get a [strange EOF error](#troubleshooting.strange-eof-error.md) when using `hugo new`, please open each archetype file (i.e.&nbsp;`archetypes/*.md`) and press <kbd>Enter</kbd> to type a carriage return after the closing `+++` or `---` as necessary.


### Step 2. Using the archetype

Now, with `archetypes/default.md` in place, let's create a new post in the `post` section with the `hugo new` command:

    $ hugo new post/my-new-post.md

Hugo would create the file with the following contents:

#### content/post/my-new-post.md

    +++
    title = "my new post"
    date = "2015-01-12T19:20:04-07:00"
    tags = ["x", "y"]
    categories = ["x", "y"]
    +++

We see that the `title` and `date` variables have been added, in addition to the `tags` and `categories` variables which were carried over from `archetype/default.md`.

Congratulations!  We have successfully created an archetype and used it for our new contents.  That's all there is to it!


## Using a different front matter format

By default, the front matter will be created in the TOML format
regardless of what format the archetype is using.

You can specify a different default format in your site-wide config file
(e.g. `config.toml`) using the `MetaDataFormat` directive.
Possible values are `"toml"`, `"yaml"` and `"json"`.


## Which archetype is being used

The following rules apply:

* If an archetype with a filename that matches the content type being created, it will be used.
* If no match is found, `archetypes/default.md` will be used.
* If neither is present and a theme is in use, then within the theme:
    * If an archetype with a filename that matches the content type being created, it will be used.
    * If no match is found, `archetypes/default.md` will be used.
* If no archetype files are present, then the one that ships with Hugo will be used.

Hugo provides a simple archetype which sets the `title` (based on the
file name) and the `date` in RFC&nbsp;3339 format based on
[`now()`](http://golang.org/pkg/time/#Now), which returns the current time.

> *Note: `hugo new` does not automatically add `draft = true` when the user
> provides an archetype.  This is by design, rationale being that
> the archetype should set its own value for all fields.
> `title` and `date`, which are dynamic and unique for each piece of content,
> are the sole exceptions.*

Content type is automatically detected based on the path. You are welcome to declare which type to create using the `--kind` flag during creation.
<a name="content.ordering.md"></a>

# Ordering Content


Hugo provides you with all the flexibility you need to organize how your content is ordered.

By default, content is ordered by weight, then by date with the most
recent date first, but alternative sorting (by `title` and `linktitle`) is
also available. The order the content would appear is specified in
the [list template](#templates.list.md).

_Both the `date` and `weight` fields are optional._

Unweighted pages appear at the end of the list. If no weights are provided (or
if weights are the same), `date` will be used to sort. If neither is provided,
content will be ordered based on how it's read off the disk, and no order is
guaranteed.

## Assigning weight to content

    +++
    weight = 4
    title = "Three"
    date = "2012-04-06"
    +++
    Front Matter with Ordered Pages 3


## Ordering Content Within Taxonomies

Please see the [Taxonomy Ordering Documentation](#taxonomies.ordering.md).
<a name="content.summaries.md"></a>

# Summaries


With the use of the `.Summary` [page variable](#templates.variables.md), Hugo can generate summaries of content for easily showing snippets in summary views. The summary view snippets are automatically generated by Hugo. Where a piece of content is split for the content summary depends on whether the split is Hugo-defined or user-defined.

Content summaries may also provide links to the original content, usually in the form of a "Read More..." link, with the help of the `.RelPermalink` or `.Permalink` variable, as well as the `.Truncated` boolean variable to determine whether such "Read More..." link is necessary.

## Hugo-defined: automatic summary split

By default, Hugo automatically takes the first 70 words of your content as its summary and stores it into the `.Summary` variable, which you may use in your templates.

* Pros: Automatic, no additional work on your part.
* Cons: All HTML tags are stripped from the summary, and the first 70 words, whether they belong to a heading or to different paragraphs, are all lumped into one paragraph.  Some people like it, but some people don't.

## User-defined: manual summary split:

Alternatively, you may adding the <code>&#60;&#33;&#45;&#45;more&#45;&#45;&#62;</code> summary divider[^1] where you want to split the article.  Content prior to the summary divider will be used as that content's summary, and stored into the `.Summary` variable with all HTML formatting intact.

[^1]: The **summary divider** is also called "more tag", "excerpt separator", etc. in other literature.

* Pros: Freedom, precision, and improved rendering.  All formatting is preserved.
* Cons: Need to remember to type <code>&#60;&#33;&#45;&#45;more&#45;&#45;&#62;</code> in your content file.  :-)

Be careful to enter <code>&#60;&#33;&#45;&#45;more&#45;&#45;&#62;</code> exactly, i.e. all lowercase with no whitespace, otherwise it would be treated as regular comment and ignored.


## Showing Summaries

You can show content summaries with the following code. You could do this, for example, on a [list](#templates.list.md) node.

    {{ range first 10 .Data.Pages }}
      <div class="summary">
        <h4><a href="{{ .RelPermalink }}">{{ .Title }}</a></h4>
        {{ .Summary }}
      </div>
      {{ if .Truncated }}
      <div class="read-more-link">
        <a href="{{ .RelPermalink }}">Read More…</a>
      </div>
      {{ end }}
    {{ end }}

Note how the `.Truncated` boolean valuable may be used to hide the "Read More..." link when the content is not truncated, i.e. when the summary contains the entire article.
<a name="content.example.md"></a>

# Example Content File


Some things are better shown than explained. The following is a very basic example of a content file written in [Markdown](https://help.github.com/articles/github-flavored-markdown/):

**mysite/content/project/nitro.md → http://mysite.com/project/nitro.html**

With TOML front matter:

```markdown
+++
date        = "2013-06-21T11:27:27-04:00"
title       = "Nitro: A quick and simple profiler for Go"
description = "Nitro is a simple profiler for your Golang applications"
tags        = [ "Development", "Go", "profiling" ]
topics      = [ "Development", "Go" ]
slug        = "nitro"
project_url = "https://github.com/spf13/nitro"
+++

# Nitro

Quick and easy performance analyzer library for [Go](http://golang.org/).

## Overview

Nitro is a quick and easy performance analyzer library for Go.
It is useful for comparing A/B against different drafts of functions
or different functions.

## Implementing Nitro

Using Nitro is simple. First, use `go get` to install the latest version
of the library.

    $ go get github.com/spf13/nitro

Next, include nitro in your application.
```

You may also use the equivalent YAML front matter:

```markdown
---
date:        "2013-06-21T11:27:27-04:00"
title:       "Nitro: A quick and simple profiler for Go"
description: "Nitro is a simple profiler for your Go lang applications"
tags:        [ "Development", "Go", "profiling" ]
topics:      [ "Development", "Go" ]
slug:        "nitro"
project_url: "https://github.com/spf13/nitro"
---
```

`nitro.md` would be rendered as follows:

> # Nitro
>
> Quick and easy performance analyzer library for [Go](http://golang.org/).
>
> ## Overview
>
> Nitro is a quick and easy performance analyzer library for Go.
> It is useful for comparing A/B against different drafts of functions
> or different functions.
>
> ## Implementing Nitro
>
> Using Nitro is simple. First, use `go get` to install the latest version
> of the library.
>
>     $ go get github.com/spf13/nitro
>
> Next, include nitro in your application.

The source `nitro.md` file is converted to HTML by the excellent
[Blackfriday](https://github.com/russross/blackfriday) Markdown processor,
which supports extended features found in the popular
[GitHub Flavored Markdown](https://help.github.com/articles/github-flavored-markdown/).
<a name="templates.overview.md"></a>

# Hugo Templates


Hugo uses the excellent Go html/template library for its template engine.
It is an extremely lightweight engine that provides a very small amount of
logic. In our experience it is just the right amount of logic to be able
to create a good static website.

While Hugo has a number of different template roles, most complete
websites can be built using just a small number of template files.
Please don’t be afraid of the variety of different template roles. They
enable Hugo to build very complicated sites. Most sites will only
need to create a [/layouts/\_default/single.html](#templates.content.md) & [/layouts/\_default/list.html](#templates.list.md)

If you are new to Go's templates, the [Go Template Primer](#layout.go-templates.md)
is a great place to start.

If you are familiar with Go’s templates, Hugo provides some [additional
template functions](#templates.functions.md) and [variables](#templates.variables.md) you will want to be familiar
with.

## Primary Template roles

There are 3 primary kinds of templates that Hugo works with.

### [Single](#templates.content.md)
Render a single piece of content

### [List](#templates.list.md)
Page that list multiple pieces of content

### [Homepage](#templates.homepage.md)
The homepage of your site

## Supporting Template Roles (optional)

Hugo also has additional kinds of templates all of which are optional

### [Partial Templates](#templates.partials.md)
Common page parts to be included in the above mentioned templates

### [Content Views](#templates.views.md)
Different ways of rendering a (single) content type

### [Taxonomy Terms](#templates.terms.md)
A list of the terms used for a specific taxonomy, e.g. a Tag cloud

## Other Templates (generally unnecessary)

### [RSS](#templates.rss.md)
Used to render all rss documents

### [Sitemap](#templates.sitemap.md)
Used to render the XML sitemap

### [404](#templates.404.md)
This template will create a 404.html page used when hosting on GitHub Pages


<a name="templates.go-templates.md"></a>

# Go Template Primer


Hugo uses the excellent [Go][] [html/template][gohtmltemplate] library for
its template engine. It is an extremely lightweight engine that provides a very
small amount of logic. In our experience it is just the right amount of
logic to be able to create a good static website. If you have used other
template systems from different languages or frameworks, you will find a lot of
similarities in Go templates.

This document is a brief primer on using Go templates. The [Go docs][gohtmltemplate]
go into more depth and cover features that aren't mentioned here.

## Introduction to Go Templates

Go templates provide an extremely simple template language. It adheres to the
belief that only the most basic of logic belongs in the template or view layer.
One consequence of this simplicity is that Go templates parse very quickly.

A unique characteristic of Go templates is they are content aware. Variables and
content will be sanitized depending on the context of where they are used. More
details can be found in the [Go docs][gohtmltemplate].

## Basic Syntax

Go lang templates are HTML files with the addition of variables and
functions.

**Go variables and functions are accessible within {{ }}**

Accessing a predefined variable "foo":

    {{ foo }}

**Parameters are separated using spaces**

Calling the `add` function with input of 1, 2:

    {{ add 1 2 }}

**Methods and fields are accessed via dot notation**

Accessing the Page Parameter "bar"

    {{ .Params.bar }}

**Parentheses can be used to group items together**

    {{ if or (isset .Params "alt") (isset .Params "caption") }} Caption {{ end }}


## Variables

Each Go template has a struct (object) made available to it. In Hugo, each
template is passed either a page or a node struct depending on which type of
page you are rendering. More details are available on the
[variables](#layout.variables.md) page.

A variable is accessed by referencing the variable name.

    <title>{{ .Title }}</title>

Variables can also be defined and referenced.

    {{ $address := "123 Main St."}}
    {{ $address }}


## Functions

Go template ships with a few functions which provide basic functionality. The Go
template system also provides a mechanism for applications to extend the
available functions with their own. [Hugo template
functions](#layout.functions.md) provide some additional functionality we believe
are useful for building websites. Functions are called by using their name
followed by the required parameters separated by spaces. Template
functions cannot be added without recompiling Hugo.

**Example 1: Adding numbers**

    {{ add 1 2 }}

**Example 2: Comparing numbers**

    {{ lt 1 2 }}

(There are more boolean operators, detailed in the
[template documentation](http://golang.org/pkg/text/template/#hdr-Functions).)

## Includes

When including another template, you will pass to it the data it will be
able to access. To pass along the current context, please remember to
include a trailing dot. The templates location will always be starting at
the /layout/ directory within Hugo.

**Example:**

    {{ template "partials/header.html" . }}

And, starting with Hugo v0.12, you may also use the `partial` call
for [partial templates](#templates.partials.md):

    {{ partial "header.html" . }}


## Logic

Go templates provide the most basic iteration and conditional logic.

### Iteration

Just like in Go, the Go templates make heavy use of `range` to iterate over
a map, array or slice. The following are different examples of how to use
range.

**Example 1: Using Context**

    {{ range array }}
        {{ . }}
    {{ end }}

**Example 2: Declaring value variable name**

    {{range $element := array}}
        {{ $element }}
    {{ end }}

**Example 2: Declaring key and value variable name**

    {{range $index, $element := array}}
        {{ $index }}
        {{ $element }}
    {{ end }}

### Conditionals

`if`, `else`, `with`, `or` & `and` provide the framework for handling conditional
logic in Go Templates. Like `range`, each statement is closed with `end`.

Go Templates treat the following values as false:

* false
* 0
* any array, slice, map, or string of length zero

**Example 1: `if`**

    {{ if isset .Params "title" }}<h4>{{ index .Params "title" }}</h4>{{ end }}

**Example 2: `if` … `else`**

    {{ if isset .Params "alt" }}
        {{ index .Params "alt" }}
    {{else}}
        {{ index .Params "caption" }}
    {{ end }}

**Example 3: `and` & `or`**

    {{ if and (or (isset .Params "title") (isset .Params "caption")) (isset .Params "attr")}}

**Example 4: `with`**

An alternative way of writing "`if`" and then referencing the same value
is to use "`with`" instead. `with` rebinds the context `.` within its scope,
and skips the block if the variable is absent.

The first example above could be simplified as:

    {{ with .Params.title }}<h4>{{ . }}</h4>{{ end }}

**Example 5: `if` … `else if`**

    {{ if isset .Params "alt" }}
        {{ index .Params "alt" }}
    {{ else if isset .Params "caption" }}
        {{ index .Params "caption" }}
    {{ end }}

## Pipes

One of the most powerful components of Go templates is the ability to
stack actions one after another. This is done by using pipes. Borrowed
from Unix pipes, the concept is simple, each pipeline's output becomes the
input of the following pipe.

Because of the very simple syntax of Go templates, the pipe is essential
to being able to chain together function calls. One limitation of the
pipes is that they only can work with a single value and that value
becomes the last parameter of the next pipeline.

A few simple examples should help convey how to use the pipe.

**Example 1:**

    {{ if eq 1 1 }} Same {{ end }}

is the same as

    {{ eq 1 1 | if }} Same {{ end }}

It does look odd to place the `if` at the end, but it does provide a good
illustration of how to use the pipes.

**Example 2:**

    {{ index .Params "disqus_url" | html }}

Access the page parameter called "disqus_url" and escape the HTML.

**Example 3:**

    {{ if or (or (isset .Params "title") (isset .Params "caption")) (isset .Params "attr")}}
    Stuff Here
    {{ end }}

Could be rewritten as

    {{  isset .Params "caption" | or isset .Params "title" | or isset .Params "attr" | if }}
    Stuff Here
    {{ end }}

### Internet Explorer conditional comments using Pipes

By default, Go Templates remove HTML comments from output. This has the unfortunate side effect of removing Internet Explorer conditional comments. As a workaround, use something like this:

    {{ "<!--[if lt IE 9]>" | safeHtml }}
      <script src="html5shiv.js"></script>
    {{ "<![endif]-->" | safeHtml }}

Alternatively, use the backtick (`` ` ``) to quote the IE conditional comments, avoiding the tedious task of escaping every double quotes (`"`) inside, as demonstrated in the [examples](http://golang.org/pkg/text/template/#hdr-Examples) in the Go text/template documentation, e.g.:

```
{{ `<!--[if lt IE 7]><html class="no-js lt-ie9 lt-ie8 lt-ie7"><![endif]-->` | safeHtml }}
```

## Context (a.k.a. the dot)

The most easily overlooked concept to understand about Go templates is that `{{ . }}`
always refers to the current context. In the top level of your template, this
will be the data set made available to it. Inside of a iteration, however, it will have
the value of the current item. When inside of a loop, the context has changed:
`{{ . }}` will no longer refer to the data available to the entire page. If you need
to
access this from within the loop, you will likely want to do one of the following:

1. Set it to a variable instead of depending on the context.  For example:

        {{ $title := .Site.Title }}
        {{ range .Params.tags }}
          <li>
            <a href="{{ $baseurl }}/tags/{{ . | urlize }}">{{ . }}</a>
            - {{ $title }}
          </li>
        {{ end }}

    Notice how once we have entered the loop the value of `{{ . }}` has changed. We
    have defined a variable outside of the loop so we have access to it from within
    the loop.

2. Use `$.` to access the global context from anywhere.
   Here is an equivalent example:

        {{ range .Params.tags }}
          <li>
            <a href="{{ $baseurl }}/tags/{{ . | urlize }}">{{ . }}</a>
            - {{ $.Site.Title }}
          </li>
        {{ end }}

    This is because `$`, a special variable, is set to the starting value
    of `.` the dot by default,
    a [documented feature](http://golang.org/pkg/text/template/#hdr-Variables)
    of Go text/template.  Very handy, eh?

    > However, this little magic would cease to work if someone were to
    > mischievously redefine `$`, e.g. `{{ $ := .Site }}`.
    > *(No, don't do it!)*
    > You may, of course, recover from this mischief by using `{{ $ := . }}`
    > in a global context to reset `$` to its default value.

# Hugo Parameters

Hugo provides the option of passing values to the template language
through the site configuration (for sitewide values), or through the meta
data of each specific piece of content. You can define any values of any
type (supported by your front matter/config format) and use them however
you want to inside of your templates.


## Using Content (page) Parameters

In each piece of content, you can provide variables to be used by the
templates. This happens in the [front matter](#content.front-matter.md).

An example of this is used in this documentation site. Most of the pages
benefit from having the table of contents provided. Sometimes the TOC just
doesn't make a lot of sense. We've defined a variable in our front matter
of some pages to turn off the TOC from being displayed.

Here is the example front matter:

```
---
title: "Permalinks"
date: "2013-11-18"
aliases:
  - "/doc/permalinks/"
groups: ["extras"]
groups_weight: 30
notoc: true
---
```

Here is the corresponding code inside of the template:

      {{ if not .Params.notoc }}
        <div id="toc" class="well col-md-4 col-sm-6">
        {{ .TableOfContents }}
        </div>
      {{ end }}



## Using Site (config) Parameters
In your top-level configuration file (e.g., `config.yaml`) you can define site
parameters, which are values which will be available to you in partials.

For instance, you might declare:

```yaml
params:
  CopyrightHTML: "Copyright &#xA9; 2013 John Doe. All Rights Reserved."
  TwitterUser: "spf13"
  SidebarRecentLimit: 5
```

Within a footer layout, you might then declare a `<footer>` which is only
provided if the `CopyrightHTML` parameter is provided, and if it is given,
you would declare it to be HTML-safe, so that the HTML entity is not escaped
again.  This would let you easily update just your top-level config file each
January 1st, instead of hunting through your templates.

```
{{if .Site.Params.CopyrightHTML}}<footer>
<div class="text-center">{{.Site.Params.CopyrightHTML | safeHtml}}</div>
</footer>{{end}}
```

An alternative way of writing the "`if`" and then referencing the same value
is to use "`with`" instead. With rebinds the context `.` within its scope,
and skips the block if the variable is absent:

```
{{with .Site.Params.TwitterUser}}<span class="twitter">
<a href="https://twitter.com/{{.}}" rel="author">
<img src="/images/twitter.png" width="48" height="48" title="Twitter: {{.}}"
 alt="Twitter"></a>
</span>{{end}}
```

Finally, if you want to pull "magic constants" out of your layouts, you can do
so, such as in this example:

```
<nav class="recent">
  <h1>Recent Posts</h1>
  <ul>{{range first .Site.Params.SidebarRecentLimit .Site.Recent}}
    <li><a href="{{.RelPermalink}}">{{.Title}}</a></li>
  {{end}}</ul>
</nav>
```


[go]: http://golang.org/
[gohtmltemplate]: http://golang.org/pkg/html/template/

# Template example: Show only upcoming events

Go allows you to do more than what's shown here.  Using Hugo's
[`where`](#templates.functions/#toc_4.md) function and Go built-ins, we can list
only the items from `content/events/` whose date (set in the front matter) is in
the future:

    <h4>Upcoming Events</h4>
    <ul class="upcoming-events">
    {{ range where .Data.Pages.ByDate "Section" "events" }}
      {{ if ge .Date.Unix .Now.Unix }}
        <li><span class="event-type">{{ .Type | title }} —</span>
          {{ .Title }}
          on <span class="event-date">
          {{ .Date.Format "2 January at 3:04pm" }}</span>
          at {{ .Params.place }}
        </li>
      {{ end }}
    {{ end }}
<a name="templates.functions.md"></a>

# Hugo Template Functions


Hugo uses the excellent Go html/template library for its template engine.
It is an extremely lightweight engine that provides a very small amount of
logic. In our experience, it is just the right amount of logic to be able
to create a good static website.

Go templates are lightweight but extensible. Hugo has added the following
functions to the basic template logic.

(Go itself supplies built-in functions, including comparison operators
and other basic tools; these are listed in the
[Go template documentation](http://golang.org/pkg/text/template/#hdr-Functions).)

## General

### isset
Return true if the parameter is set.
Takes either a slice, array or channel and an index or a map and a key as input.

e.g. `{{ if isset .Params "project_url" }} {{ index .Params "project_url" }}{{ end }}`

### echoParam
If parameter is set, then echo it.

e.g. `{{echoParam .Params "project_url" }}`

### eq
Return true if the parameters are equal.

e.g.

    {{ if eq .Section "blog" }}current{{ end }}

### first
Slices an array to only the first X elements.

Works on [lists](#templates.list.md), [taxonomies](#taxonomies.displaying.md), [terms](#templates.terms.md), [groups](#templates.list.md)

e.g.

    {{ range first 10 .Data.Pages }}
        {{ .Render "summary" }}
    {{ end }}

### where
Filters an array to only elements containing a matching value for a given field.

Works on [lists](#templates.list.md), [taxonomies](#taxonomies.displaying.md), [terms](#templates.terms.md), [groups](#templates.list.md)

e.g.

    {{ range where .Data.Pages "Section" "post" }}
       {{ .Content }}
    {{ end }}

It can be used with dot chaining second argument to refer a nested element of a value.

e.g.

    // Front matter on some pages
    +++
    series: golang
    +++

    {{ range where .Site.Recent "Params.series" "golang" }}
       {{ .Content }}
    {{ end }}

It can also be used with an operator like `!=`, `>=`, `in` etc. Without an operator (like above), `where` compares a given field with a matching value in a way like `=` is specified.

e.g.

    {{ range where .Data.Pages "Section" "!=" "post" }}
       {{ .Content }}
    {{ end }}

Following operators are now available

- `=`, `==`, `eq`: True if a given field value equals a matching value
- `!=`, `<>`, `ne`: True if a given field value doesn't equal a matching value
- `>=`, `ge`: True if a given field value is greater than or equal to a matching value
- `>`, `gt`: True if a given field value is greater than a matching value
- `<=`, `le`: True if a given field value is lesser than or equal to a matching value
- `<`, `lt`: True if a given field value is lesser than a matching value
- `in`: True if a given field value is included in a matching value. A matching value must be an array or a slice
- `not in`: True if a given field value isn't included in a matching value. A matching value must be an array or a slice

*`where` and `first` can be stacked, e.g.:*

    {{ range first 5 (where .Data.Pages "Section" "post") }}
       {{ .Content }}
    {{ end }}

### delimit
Loops through any array, slice or map and returns a string of all the values separated by the delimiter. There is an optional third parameter that lets you choose a different delimiter to go between the last two values.
Maps will be sorted by the keys, and only a slice of the values will be returned, keeping a consistent output order.

Works on [lists](#templates.list.md), [taxonomies](#taxonomies.displaying.md), [terms](#templates.terms.md), [groups](#templates.list.md)

e.g.

    // Front matter
    +++
    tags: [ "tag1", "tag2", "tag3" ]
    +++

    // Used anywhere in a template
    Tags: {{ delimit .Params.tags ", " }}

    // Outputs Tags: tag1, tag2, tag3

    // Example with the optional "last" parameter
    Tags: {{ delimit .Params.tags ", " " and " }}

    // Outputs Tags: tag1, tag2 and tag3

### sort
Sorts maps, arrays and slices, returning a sorted slice. A sorted array of map values will be returned, with the keys eliminated. There are two optional arguments, which are `sortByField` and `sortAsc`. If left blank, sort will sort by keys (for maps) in ascending order.

Works on [lists](#templates.list.md), [taxonomies](#taxonomies.displaying.md), [terms](#templates.terms.md), [groups](#templates.list.md)

e.g.

    // Front matter
    +++
    tags: [ "tag3", "tag1", "tag2" ]
    +++

    // Site config
    +++
    [params.authors]
      [params.authors.Derek]
        "firstName"  = "Derek"
        "lastName"   = "Perkins"
      [params.authors.Joe]
        "firstName"  = "Joe"
        "lastName"   = "Bergevin"
      [params.authors.Tanner]
        "firstName"  = "Tanner"
        "lastName"   = "Linsley"
    +++

    // Use default sort options - sort by key / ascending
    Tags: {{ range sort .Params.tags }}{{ . }} {{ end }}

    // Outputs Tags: tag1 tag2 tag3

    // Sort by value / descending
    Tags: {{ range sort .Params.tags "value" "desc" }}{{ . }} {{ end }}

    // Outputs Tags: tag3 tag2 tag1

    // Use default sort options - sort by value / descending
    Authors: {{ range sort .Site.Params.authors }}{{ .firstName }} {{ end }}

    // Outputs Authors: Derek Joe Tanner

    // Use default sort options - sort by value / descending
    Authors: {{ range sort .Site.Params.authors "lastName" "desc" }}{{ .lastName }} {{ end }}

    // Outputs Authors: Perkins Linsley Bergevin

### in
Checks if an element is in an array (or slice) and returns a boolean.  The elements supported are strings, integers and floats (only float64 will match as expected).  In addition, it can also check if a substring exists in a string.

e.g.

    {{ if in .Params.tags "Git" }}Follow me on GitHub!{{ end }}

or

    {{ if in "this string contains a substring" "substring" }}Substring found!{{ end }}

### intersect
Given two arrays (or slices), this function will return the common elements in the arrays.  The elements supported are strings, integers and floats (only float64).

A useful example of this functionality is a 'similar posts' block.  Create a list of links to posts where any of the tags in the current post match any tags in other posts.

e.g.

    <ul>
    {{ $page_link := .Permalink }}
    {{ $tags := .Params.tags }}
    {{ range .Site.Recent }}
        {{ $page := . }}
        {{ $has_common_tags := intersect $tags .Params.tags | len | lt 0 }}
        {{ if and $has_common_tags (ne $page_link $page.Permalink) }}
            <li><a href="{{ $page.Permalink }}">{{ $page.Title }}</a></li>
        {{ end }}
    {{ end }}
    </ul>


## Math

<table class="table table-bordered">
<thead>
<tr>
<th>Function</th>
<th>Description</th>
<th>Example</th>
</tr>
</thead>

<tbody>
<tr>
<td><code>add</code></td>
<td>Adds two integers.</td>
<td><code>{{add 1 2}}</code> → 3</td>
</tr>

<tr>
<td><code>sub</code></td>
<td>Subtracts two integers.</td>
<td><code>{{sub 3 2}}</code> → 1</td>
</tr>

<tr>
<td><code>mul</code></td>
<td>Multiplies two integers.</td>
<td><code>{{mul 2 3}}</code> → 6</td>
</tr>

<tr>
<td><code>div</code></td>
<td>Divides two integers.</td>
<td><code>{{div 6 3}}</code> → 2</td>
</tr>

<tr>
<td><code>mod</code></td>
<td>Modulus of two integers.</td>
<td><code>{{mod 15 3}}</code> → 0</td>
</tr>

<tr>
<td><code>modBool</code></td>
<td>Boolean of modulus of two integers.  <code>true</code> if modulus is 0.</td>
<td><code>{{modBool 15 3}}</code> → true</td>
</tr>
</tbody>
</table>


## Strings

### urlize
Takes a string and sanitizes it for usage in URLs, converts spaces to "-".

e.g. `<a href="/tags/{{ . | urlize }}">{{ . }}</a>`

### safeHtml
Declares the provided string as a "safe" HTML document fragment
so Go html/template will not filter it.  It should not be used
for HTML from a third-party, or HTML with unclosed tags or comments.

Example: Given a site-wide `config.toml` that contains this line:

    copyright = "© 2015 Jane Doe.  <a href=\"http://creativecommons.org/licenses/by/4.0/\">Some rights reserved</a>."

`{{ .Site.Copyright | safeHtml }}` would then output:

> © 2015 Jane Doe.  <a href="http://creativecommons.org/licenses/by/4.0/">Some rights reserved</a>.

However, without the `safeHtml` function, html/template assumes
`.Site.Copyright` to be unsafe, escaping all HTML tags,
rendering the whole string as plain-text like this:

<blockquote>
<p>© 2015 Jane Doe.  &lt;a href=&#34;http://creativecommons.org/licenses/by/4.0/&#34;&gt;Some rights reserved&lt;/a&gt;.</p>
</blockquote>

<!--
### safeHtmlAttr
Declares the provided string as a "safe" HTML attribute
from a trusted source, for example, ` dir="ltr"`,
so Go html/template will not filter it.

Example: Given a site-wide `config.toml` that contains this menu entry:

    [[menu.main]]
        name = "IRC: #golang at freenode"
        url = "irc://irc.freenode.net/#golang"

* `<a href="{{ .Url }}">` ⇒ `<a href="#ZgotmplZ">` (Bad!)
* `<a {{ printf "href=%q" .Url | safeHtmlAttr }}>` ⇒ `<a href="irc://irc.freenode.net/#golang">` (Good!)
-->

### safeCss
Declares the provided string as a known "safe" CSS string
so Go html/templates will not filter it.
"Safe" means CSS content that matches any of:

1. The CSS3 stylesheet production, such as `p { color: purple }`.
2. The CSS3 rule production, such as `a[href=~"https:"].foo#bar`.
3. CSS3 declaration productions, such as `color: red; margin: 2px`.
4. The CSS3 value production, such as `rgba(0, 0, 255, 127)`.

Example: Given `style = "color: red;"` defined in the front matter of your `.md` file:

* `<p style="{{ .Params.style | safeCss }}">…</p>` ⇒ `<p style="color: red;">…</p>` (Good!)
* `<p style="{{ .Params.style }}">…</p>` ⇒ `<p style="ZgotmplZ">…</p>` (Bad!)

Note: "ZgotmplZ" is a special value that indicates that unsafe content reached a
CSS or URL context.

### safeUrl
Declares the provided string as a "safe" URL or URL substring (see [RFC 3986][]).
A URL like `javascript:checkThatFormNotEditedBeforeLeavingPage()` from a trusted
source should go in the page, but by default dynamic `javascript:` URLs are
filtered out since they are a frequently exploited injection vector.

[RFC 3986]: http://tools.ietf.org/html/rfc3986

Without `safeUrl`, only the URI schemes `http:`, `https:` and `mailto:`
are considered safe by Go.  If any other URI schemes, e.g.&nbsp;`irc:` and
`javascript:`, are detected, the whole URL would be replaced with
`#ZgotmplZ`.  This is to "defang" any potential attack in the URL,
rendering it useless.

Example: Given a site-wide `config.toml` that contains this menu entry:

    [[menu.main]]
        name = "IRC: #golang at freenode"
        url = "irc://irc.freenode.net/#golang"

The following template:

    <ul class="sidebar-menu">
      {{ range .Site.Menus.main }}
      <li><a href="{{ .Url }}">{{ .Name }}</a></li>
      {{ end }}
    </ul>

would produce `<li><a href="#ZgotmplZ">IRC: #golang at freenode</a></li>`
for the `irc://…` URL.

To fix this, add ` | safeUrl` after `.Url` on the 3rd line, like this:

      <li><a href="{{ .Url | safeUrl }}">{{ .Name }}</a></li>

With this change, we finally get `<li><a href="irc://irc.freenode.net/#golang">IRC: #golang at freenode</a></li>`
as intended.

### markdownify

This will run the string through the Markdown processesor. The result will be declared as "safe" so Go templates will not filter it.

e.g. `{{ .Title | markdownify }}`

### lower
Convert all characters in string to lowercase.

e.g. `{{lower "BatMan"}}` → "batman"

### upper
Convert all characters in string to uppercase.

e.g. `{{upper "BatMan"}}` → "BATMAN"

### title
Convert all characters in string to titlecase.

e.g. `{{title "BatMan"}}` → "Batman"

### chomp
Removes any trailing newline characters. Useful in a pipeline to remove newlines added by other processing (including `markdownify`).

e.g., `{{chomp "<p>Blockhead</p>\n"` → `"<p>Blockhead</p>"`

### trim
Trim returns a slice of the string with all leading and trailing characters contained in cutset removed.

e.g. `{{ trim "++Batman--" "+-" }}` → "Batman"

### replace
Replace all occurences of the search string with the replacement string.

e.g. `{{ replace "Batman and Robin" "Robin" "Catwoman" }}` → "Batman and Catwoman"

### dateFormat
Converts the textual representation of the datetime into the other form or returns it of Go `time.Time` type value. These are formatted with the layout string.

e.g. `{{ dateFormat "Monday, Jan 2, 2006" "2015-01-21" }}` →"Wednesday, Jan 21, 2015"

### highlight
Take a string of code and a language, uses Pygments to return the syntax highlighted code in HTML. Used in the [highlight shortcode](#extras.highlighting.md).

### ref, relref
Looks up a content page by relative path or logical name to return the permalink (`ref`) or relative permalink (`relref`). Requires a Node or Page object (usually satisfied with `.`). Used in the [`ref` and `relref` shortcodes]({{% ref "extras/crossreferences.md" %}}).

e.g. {{ ref . "about.md" }}

## Advanced

### apply

Given a map, array, or slice, returns a new slice with a function applied over it. Expects at least three parameters, depending on the function being applied. The first parameter is the sequence to operate on; the second is the name of the function as a string, which must be in the Hugo function map (generally, it is these functions documented here). After that, the parameters to the applied function are provided, with the string `"."` standing in for each element of the sequence the function is to be applied against. An example is in order:

    +++
    names: [ "Derek Perkins", "Joe Bergevin", "Tanner Linsley" ]
    +++

    {{ apply .Params.names "urlize" "." }} → [ "derek-perkins", "joe-bergevin", "tanner-linsley" ]

This is roughly equivalent to:

    {{ range .Params.names }}{{ . | urlize }}{{ end }}

However, it isn’t possible to provide the output of a range to the `delimit` function, so you need to `apply` it. A more complete example should explain this. Let's say you have two partials for displaying tag links in a post,  "post/tag/list.html" and "post/tag/link.html", as shown below.

    <!-- post/tag/list.html -->
    {{ with .Params.tags }}
    <div class="tags-list">
      Tags:
      {{ $len := len . }}
      {{ if eq $len 1 }}
        {{ partial "post/tag/link" (index . 0) }}
      {{ else }}
        {{ $last := sub $len 1 }}
        {{ range first $last . }}
          {{ partial "post/tag/link" . }},
        {{ end }}
        {{ partial "post/tag/link" (index . $last) }}
      {{ end }}
    </div>
    {{ end }}


    <!-- post/tag/link.html -->
    <a class="post-tag post-tag-{{ . | urlize }}" href="/tags/{{ . | urlize }}">{{ . }}</a>

This works, but the complexity of "post/tag/list.html" is fairly high; the Hugo template needs to perform special behaviour for the case where there’s only one tag, and it has to treat the last tag as special. Additionally, the tag list will be rendered something like "Tags: tag1 , tag2 , tag3" because of the way that the HTML is generated and it is interpreted by a browser.

This is Hugo. We have a better way. If this were your "post/tag/list.html" instead, all of those problems are fixed automatically (this first version separates all of the operations for ease of reading; the combined version will be shown after the explanation).

    <!-- post/tag/list.html -->
    {{ with.Params.tags }}
    <div class="tags-list">
      Tags:
      {{ $sort := sort . }}
      {{ $links := apply $sort "partial" "post/tag/link" "." }}
      {{ $clean := apply $links "chomp" "." }}
      {{ delimit $clean ", " }}
    </div>
    {{ end }}

In this version, we are now sorting the tags, converting them to links with "post/tag/link.html", cleaning off stray newlines, and joining them together in a delimited list for presentation. That can also be written as:

    <!-- post/tag/list.html -->
    {{ with.Params.tags }}
    <div class="tags-list">
      Tags:
      {{ delimit (apply (apply (sort .) "partial" "post/tag/link" ".") "chomp" ".") ", " }}
    </div>
    {{ end }}

`apply` does not work when receiving the sequence as an argument through a pipeline.
<a name="templates.variables.md"></a>

# Template Variables


Hugo makes a set of values available to the templates. Go templates are context based. The following
are available in the context for the templates.

## Page Variables

The following is a list of most of the accessible variables which can be
defined for a piece of content. Many of these will be defined in the front
matter, content or derived from file location.

**.Title**  The title for the content.<br>
**.Content** The content itself, defined below the front matter.<br>
**.Summary** A generated summary of the content for easily showing a snippet in a summary view. Note that the breakpoint can be set manually by inserting <code>&lt;!&#x2d;&#x2d;more&#x2d;&#x2d;&gt;</code> at the appropriate place in the content page.  See [Summaries](#content.summaries.md) for more details.<br>
**.Truncated** A boolean, `true` if the `.Summary` is truncated.  Useful for showing a "Read more..." link only if necessary.  See [Summaries](#content.summaries.md) for more details.<br>
**.Description** The description for the content.<br>
**.Keywords** The meta keywords for this content.<br>
**.Date** The date the content is associated with.<br>
**.PublishDate** The date the content is published on.<br>
**.Type** The content [type](#content.types.md) (e.g. post).<br>
**.Section** The [section](#content.sections.md) this content belongs to.<br>
**.Permalink** The Permanent link for this page.<br>
**.RelPermalink** The Relative permanent link for this page.<br>
**.LinkTitle** Access when creating links to this content. Will use linktitle if set in front-matter, else title.<br>
**.Taxonomies** These will use the field name of the plural form of the index (see tags and categories above).<br>
**.RSSLink** Link to the indexes' rss link.<br>
**.TableOfContents** The rendered table of contents for this content.<br>
**.Prev** Pointer to the previous content (based on pub date).<br>
**.Next** Pointer to the following content (based on pub date).<br>
**.PrevInSection** Pointer to the previous content within the same section (based on pub date)<br>
**.NextInSection** Pointer to the following content within the same section (based on pub date)<br>
**.FuzzyWordCount** The approximate number of words in the content.<br>
**.WordCount** The number of words in the content.<br>
**.ReadingTime** The estimated time it takes to read the content in minutes.<br>
**.Weight** Assigned weight (in the front matter) to this content, used in sorting.<br>
**.IsNode** Always false for pages.<br>
**.IsPage** Always true for page.<br>
**.Site** See site variables below.<br>
**.Hugo** See Hugo variables below<br>

## Page Params

Any other value defined in the front matter, including indexes will be made available under `.Params`.
Take for example I'm using tags and categories as my indexes. The following would be how I would access them:

**.Params.tags** <br>
**.Params.categories** <br>
<br>
**All Params are only accessible using all lowercase characters**<br>

## Node Variables
In Hugo a node is any page not rendered directly by a content file. This
includes indexes, lists and the homepage.

**.Title**  The title for the content.<br>
**.Date** The date the content is published on.<br>
**.Permalink** The Permanent link for this node<br>
**.Url** The relative url for this node.<br>
**.Ref(ref)** Returns the permalink for `ref`. See [cross-references]({{% ref "extras/crossreferences.md" %}}). Does not handle in-page fragments correctly.<br>
**.RelRef(ref)** Returns the relative permalink for `ref`. See [cross-references]({{% ref "extras/crossreferences.md" %}}). Does not handle in-page fragments correctly.<br>
**.RSSLink** Link to the indexes' rss link <br>
**.Data** The data specific to this type of node.<br>
**.IsNode** Always true for nodes.<br>
**.IsPage** Always false for nodes.<br>
**.Site** See site variables below<br>
**.Hugo** See site variables below<br>

## Site Variables

Also available is `.Site` which has the following:

**.Site.BaseUrl** The base URL for the site as defined in the site configuration file.<br>
**.Site.Taxonomies** The indexes for the entire site.<br>
**.Site.LastChange** The date of the last change of the most recent content.<br>
**.Site.Recent** Array of all content ordered by Date, newest first.<br>
**.Site.Params** A container holding the values from the `params` section of your site configuration file. For example, a TOML config file might look like this:

    baseurl = "http://yoursite.example.com/"

    [params]
      description = "Tesla's Awesome Hugo Site"
      author = "Nikola Tesla"
**.Site.Sections** Top level directories of the site.<br>
**.Site.Pages** All of the content pages of the site.<br>
**.Site.Files** All of the source files of the site.<br>
**.Site.Menus** All of the menus in the site.<br>
**.Site.Title** A string representing the title of the site.<br>
**.Site.Author** A map of the authors as defined in the site configuration.<br>
**.Site.LanguageCode** A string representing the language as defined in the site configuration.<br>
**.Site.DisqusShortname** A string representing the shortname of the Disqus shortcode as defined in the site configuration.<br>
**.Site.Copyright** A string representing the copyright of your web site as defined in the site configuration.<br>
**.Site.LastChange** A string representing the last time content has been updated.<br>
**.Site.Permalinks** A string to override the default permalink format. Defined in the site configuration.<br>
**.Site.BuildDrafts** A boolean (Default: false) to indicate whether to build drafts. Defined in the site configuration.<br>

## Hugo Variables

Also available is `.Hugo` which has the following:

**.Hugo.Generator** Meta tag for the version of Hugo that generated the site. Highly recommended to be included by default in all theme headers so we can start to track Hugo usage and popularity. e.g. `<meta name="generator" content="Hugo 0.13" />`<br>
**.Hugo.Version** The current version of the Hugo binary you are using e.g. `0.13-DEV`<br>
**.Hugo.CommitHash** The git commit hash of the current Hugo binary e.g. `0e8bed9ccffba0df554728b46c5bbf6d78ae5247`<br>
**.Hugo.BuildDate** The compile date of the current Hugo binary formatted with RFC 3339 e.g. `2002-10-02T10:00:00-05:00`<br>
<a name="templates.content.md"></a>

# Single Content Template


The primary view of content in Hugo is the single view. Hugo, for every
Markdown file provided, will render it with a single template.


## Which Template will be rendered?
Hugo uses a set of rules to figure out which template to use when
rendering a specific page.

Hugo will use the following prioritized list. If a file isn’t present,
then the next one in the list will be used. This enables you to craft
specific layouts when you want to without creating more templates
than necessary. For most sites only the \_default file at the end of
the list will be needed.

Users can specify the `type` and `layout` in the [front-matter](#content.front-matter.md). `Section`
is determined based on the content file’s location. If `type` is provide,
it will be used instead of `section`.

### Single

* /layouts/`TYPE`-or-`SECTION`/`LAYOUT`.html
* /layouts/`TYPE`-or-`SECTION`/single.html
* /layouts/\_default/single.html
* /themes/`THEME`/layouts/`TYPE`-or-`SECTION`/`LAYOUT`.html
* /themes/`THEME`/layouts/`TYPE`-or-`SECTION`/single.html
* /themes/`THEME`/layouts/\_default/single.html

## Example Single Template File

Content pages are of the type "page" and have all the [page
variables](#layout.variables.md) and [site
variables](#templates.variables.md) available to use in the templates.

In the following examples we have created two different content types as well as
a default content type.

The default content template to be used in the event that a specific
template has not been provided for that type. The default type works the
same as the other types, but the directory must be called "\_default".

    ▾ layouts/
      ▾ _default/
          single.html
      ▾ post/
          single.html
      ▾ project/
          single.html


## post/single.html
This content template is used for [spf13.com](http://spf13.com).
It makes use of [partial templates](#layout.partials.md)

    {{ partial "header.html" . }}
    {{ partial "subheader.html" . }}
    {{ $baseurl := .Site.BaseUrl }}

    <section id="main">
      <h1 id="title">{{ .Title }}</h1>
      <div>
            <article id="content">
               {{ .Content }}
            </article>
      </div>
    </section>

    <aside id="meta">
        <div>
        <section>
          <h4 id="date"> {{ .Date.Format "Mon Jan 2, 2006" }} </h4>
          <h5 id="wc"> {{ .FuzzyWordCount }} Words </h5>
        </section>
        <ul id="categories">
          {{ range .Params.topics }}
            <li><a href="{{ $baseurl }}/topics/{{ . | urlize }}">{{ . }}</a> </li>
          {{ end }}
        </ul>
        <ul id="tags">
          {{ range .Params.tags }}
            <li> <a href="{{ $baseurl }}/tags/{{ . | urlize }}">{{ . }}</a> </li>
          {{ end }}
        </ul>
        </div>
        <div>
            {{ if .Prev }}
              <a class="previous" href="{{.Prev.Permalink}}"> {{.Prev.Title}}</a>
            {{ end }}
            {{ if .Next }}
              <a class="next" href="{{.Next.Permalink}}"> {{.Next.Title}}</a>
            {{ end }}
        </div>
    </aside>

    {{ partial "disqus.html" . }}
    {{ partial "footer.html" . }}


## project/single.html
This content template is used for [spf13.com](http://spf13.com).
It makes use of [partial templates](#layout.partials.md)


    {{ partial "header.html" . }}
    {{ partial "subheader.html" . }}
    {{ $baseurl := .Site.BaseUrl }}

    <section id="main">
      <h1 id="title">{{ .Title }}</h1>
      <div>
            <article id="content">
               {{ .Content }}
            </article>
      </div>
    </section>

    <aside id="meta">
        <div>
        <section>
          <h4 id="date"> {{ .Date.Format "Mon Jan 2, 2006" }} </h4>
          <h5 id="wc"> {{ .FuzzyWordCount }} Words </h5>
        </section>
        <ul id="categories">
          {{ range .Params.topics }}
          <li><a href="{{ $baseurl }}/topics/{{ . | urlize }}">{{ . }}</a> </li>
          {{ end }}
        </ul>
        <ul id="tags">
          {{ range .Params.tags }}
            <li> <a href="{{ $baseurl }}/tags/{{ . | urlize }}">{{ . }}</a> </li>
          {{ end }}
        </ul>
        </div>
    </aside>

    {{if isset .Params "project_url" }}
    <div id="ribbon">
        <a href="{{ index .Params "project_url" }}" rel="me">Fork me on GitHub</a>
    </div>
    {{ end }}

    {{ partial "footer.html" }}

Notice how the project/single.html template uses an additional parameter unique
to this template. This doesn't need to be defined ahead of time. If the key is
present in the front matter than it can be used in the template. To
easily generate new content of this type with these keys ready use
[content archetypes](#content.archetypes.md).
<a name="templates.list.md"></a>

# Content List Template


A list template is any template that will be used to render multiple pieces of
content in a single HTML page (with the exception of the [homepage](#layout.homepage.md) which has a
dedicated template).

We are using the term list in its truest sense, a sequential arrangement
of material, especially in alphabetical or numerical order. Hugo uses
list templates to render anyplace where content is being listed such as
taxonomies and sections.

## Which Template will be rendered?

Hugo uses a set of rules to figure out which template to use when
rendering a specific page.

Hugo will use the following prioritized list. If a file isn’t present,
then the next one in the list will be used. This enables you to craft
specific layouts when you want to without creating more templates
than necessary. For most sites only the \_default file at the end of
the list will be needed.


### Section Lists

A Section will be rendered at /`SECTION`/

* /layouts/section/`SECTION`.html
* /layouts/\_default/section.html
* /layouts/\_default/list.html
* /themes/`THEME`/layouts/section/`SECTION`.html
* /themes/`THEME`/layouts/\_default/section.html
* /themes/`THEME`/layouts/\_default/list.html


### Taxonomy Lists

A Taxonomy will be rendered at /`PLURAL`/`TERM`/

* /layouts/taxonomy/`SINGULAR`.html
* /layouts/\_default/taxonomy.html
* /layouts/\_default/list.html
* /themes/`THEME`/layouts/taxonomy/`SINGULAR`.html
* /themes/`THEME`/layouts/\_default/taxonomy.html
* /themes/`THEME`/layouts/\_default/list.html

### Section RSS

A Section’s RSS will be rendered at /`SECTION`/index.xml

*Hugo ships with its own [RSS 2.0][] template. In most cases this will
be sufficient, and an RSS template will not need to be provided by the
user.*

Hugo provides the ability for you to define any RSS type you wish, and
can have different RSS files for each section and taxonomy.

* /layouts/section/`SECTION`.rss.xml
* /layouts/\_default/rss.xml
* /themes/`THEME`/layouts/section/`SECTION`.rss.xml
* /themes/`THEME`/layouts/\_default/rss.xml

### Taxonomy RSS

A Taxonomy’s RSS will be rendered at /`PLURAL`/`TERM`/index.xml

*Hugo ships with its own [RSS 2.0][] template. In most cases this will
be sufficient, and an RSS template will not need to be provided by the
user.*

Hugo provides the ability for you to define any RSS type you wish, and
can have different RSS files for each section and taxonomy.

* /layouts/taxonomy/`SINGULAR`.rss.xml
* /layouts/\_default/rss.xml
* /themes/`THEME`/layouts/taxonomy/`SINGULAR`.rss.xml
* /themes/`THEME`/layouts/\_default/rss.xml


## Variables

List pages are of the type "node" and have all the [node
variables](#templates.variables.md) and [site
variables](#templates.variables.md) available to use in the templates.

Taxonomy pages will additionally have:

**.Data.`singular`** The taxonomy itself.<br>

## Example List Template Pages

### Example section template (post.html)
This content template is used for [spf13.com](http://spf13.com).
It makes use of [partial templates](#templates.partials.md). All examples use a
[view](#templates.views.md) called either "li" or "summary" which this example site
defined.

    {{ partial "header.html" . }}
    {{ partial "subheader.html" . }}

    <section id="main">
      <div>
       <h1 id="title">{{ .Title }}</h1>
            <ul id="list">
                {{ range .Data.Pages }}
                    {{ .Render "li"}}
                {{ end }}
            </ul>
      </div>
    </section>

    {{ partial "footer.html" . }}

### Example taxonomy template (tag.html)
This content template is used for [spf13.com](http://spf13.com).
It makes use of [partial templates](#templates.partials.md). All examples use a
[view](#templates.views.md) called either "li" or "summary" which this example site
defined.

    {{ partial "header.html" . }}
    {{ partial "subheader.html" . }}

    <section id="main">
      <div>
       <h1 id="title">{{ .Title }}</h1>
        {{ range .Data.Pages }}
            {{ .Render "summary"}}
        {{ end }}
      </div>
    </section>

    {{ partial "footer.html" . }}

## Ordering Content

In the case of Hugo each list will render the content based on metadata provided in the [front
matter](#content.front-matter.md). See [ordering content](#content.ordering.md) for more information.

Here are a variety of different ways you can order the content items in
your list templates:

### Order by Weight -> Date (default)

    {{ range .Data.Pages }}
    <li>
    <a href="{{ .Permalink }}">{{ .Title }}</a>
    <div class="meta">{{ .Date.Format "Mon, Jan 2, 2006" }}</div>
    </li>
    {{ end }}

### Order by Weight -> Date

    {{ range .Data.Pages.ByWeight }}
    <li>
    <a href="{{ .Permalink }}">{{ .Title }}</a>
    <div class="meta">{{ .Date.Format "Mon, Jan 2, 2006" }}</div>
    </li>
    {{ end }}

### Order by Date

    {{ range .Data.Pages.ByDate }}
    <li>
    <a href="{{ .Permalink }}">{{ .Title }}</a>
    <div class="meta">{{ .Date.Format "Mon, Jan 2, 2006" }}</div>
    </li>
    {{ end }}

### Order by PublishDate

    {{ range .Data.Pages.ByPublishDate }}
    <li>
    <a href="{{ .Permalink }}">{{ .Title }}</a>
    <div class="meta">{{ .PublishDate.Format "Mon, Jan 2, 2006" }}</div>
    </li>
    {{ end }}

### Order by Length

    {{ range .Data.Pages.ByLength }}
    <li>
    <a href="{{ .Permalink }}">{{ .Title }}</a>
    <div class="meta">{{ .Date.Format "Mon, Jan 2, 2006" }}</div>
    </li>
    {{ end }}


### Order by Title

    {{ range .Data.Pages.ByTitle }}
    <li>
    <a href="{{ .Permalink }}">{{ .Title }}</a>
    <div class="meta">{{ .Date.Format "Mon, Jan 2, 2006" }}</div>
    </li>
    {{ end }}

### Order by LinkTitle

    {{ range .Data.Pages.ByLinkTitle }}
    <li>
    <a href="{{ .Permalink }}">{{ .LinkTitle }}</a>
    <div class="meta">{{ .Date.Format "Mon, Jan 2, 2006" }}</div>
    </li>
    {{ end }}

### Reverse Order
Can be applied to any of the above. Using Date for an example.

    {{ range .Data.Pages.ByDate.Reverse }}
    <li>
    <a href="{{ .Permalink }}">{{ .Title }}</a>
    <div class="meta">{{ .Date.Format "Mon, Jan 2, 2006" }}</div>
    </li>
    {{ end }}

## Grouping Content

Hugo provides some grouping functions for list pages. You can use them to
group pages by Section, Type, Date etc.

Here are a variety of different ways you can group the content items in
your list templates:

### Grouping by Page field

    {{ range .Data.Pages.GroupBy "Section" }}
    <h3>{{ .Key }}</h3>
    <ul>
        {{ range .Pages }}
        <li>
        <a href="{{ .Permalink }}">{{ .Title }}</a>
        <div class="meta">{{ .Date.Format "Mon, Jan 2, 2006" }}</div>
        </li>
        {{ end }}
    </ul>
    {{ end }}

### Grouping by Page date

    {{ range .Data.Pages.GroupByDate "2006-01" }}
    <h3>{{ .Key }}</h3>
    <ul>
        {{ range .Pages }}
        <li>
        <a href="{{ .Permalink }}">{{ .Title }}</a>
        <div class="meta">{{ .Date.Format "Mon, Jan 2, 2006" }}</div>
        </li>
        {{ end }}
    </ul>
    {{ end }}

### Grouping by Page publish date

    {{ range .Data.Pages.GroupByPublishDate "2006-01" }}
    <h3>{{ .Key }}</h3>
    <ul>
        {{ range .Pages }}
        <li>
        <a href="{{ .Permalink }}">{{ .Title }}</a>
        <div class="meta">{{ .PublishDate.Format "Mon, Jan 2, 2006" }}</div>
        </li>
        {{ end }}
    </ul>
    {{ end }}

### Grouping by Page param

    {{ range .Data.Pages.GroupByParam "param_key" }}
    <h3>{{ .Key }}</h3>
    <ul>
        {{ range .Pages }}
        <li>
        <a href="{{ .Permalink }}">{{ .Title }}</a>
        <div class="meta">{{ .Date.Format "Mon, Jan 2, 2006" }}</div>
        </li>
        {{ end }}
    </ul>
    {{ end }}

### Grouping by Page param in date format

    {{ range .Data.Pages.GroupByParamDate "param_key" "2006-01" }}
    <h3>{{ .Key }}</h3>
    <ul>
        {{ range .Pages }}
        <li>
        <a href="{{ .Permalink }}">{{ .Title }}</a>
        <div class="meta">{{ .Date.Format "Mon, Jan 2, 2006" }}</div>
        </li>
        {{ end }}
    </ul>
    {{ end }}

### Reversing Key Order

The ordering of the groups is performed by keys in alpha-numeric order (A–Z,
1–100) and in reverse chronological order (newest first) for dates.

While these are logical defaults, they are not always the desired order. There
are two different syntaxes to change the order, they both work the same way, so
it’s really just a matter of preference.

#### Reverse method

    {{ range (.Data.Pages.GroupBy "Section").Reverse }}
    ...

    {{ range (.Data.Pages.GroupByDate "2006-01").Reverse }}
    ...


#### Providing the (alternate) direction

    {{ range .Data.Pages.GroupByDate "2006-01" "asc" }}
    ...

    {{ range .Data.Pages.GroupBy "Section" "desc" }}
    ...

### Ordering Pages within Group

Because Grouping returns a key and a slice of pages, all of the ordering methods listed above are available.

In this example I’ve ordered the groups in chronological order and the content
within each group in alphabetical order by title.

    {{ range .Data.Pages.GroupByDate "2006-01" "asc" }}
    <h3>{{ .Key }}</h3>
    <ul>
        {{ range .Pages.ByTitle }}
        <li>
        <a href="{{ .Permalink }}">{{ .Title }}</a>
        <div class="meta">{{ .Date.Format "Mon, Jan 2, 2006" }}</div>
        </li>
        {{ end }}
    </ul>
    {{ end }}

## Filtering & Limiting Content

Sometimes you only want to list a subset of the available content. A common
request is to only display “Posts” on the homepage. Using the `where` function
you can do just that.

### First

`first` works like the `limit` keyword in SQL. It reduces the array to only the
first X elements. It takes the array and number of elements as input.

    {{ range first 10 .Data.Pages }}
        {{ .Render "summary"}}
    {{ end }}

### Where

`where` works in a similar manner to the `where` keyword in SQL. It selects all
elements of the slice that match the provided field and value. It takes three
arguments 'array or slice of maps or structs', 'key or field name' and 'match
value'

    {{ range where .Data.Pages "Section" "post" }}
       {{ .Content}}
    {{ end }}

### First & Where Together

Using both together can be very powerful.

    {{ range first 5 (where .Data.Pages "Section" "post") }}
       {{ .Content}}
    {{ end }}

If `where` or `first` receives invalid input or a field name that doesn’t exist they will provide an error and stop site generation.

These are both template functions and work on not only
[lists](#templates.list.md), but [taxonomies](#taxonomies.displaying.md),
[terms](#templates.terms.md) and [groups](#templates.list.md).


[RSS 2.0]: http://cyber.law.harvard.edu/rss/rss.html "RSS 2.0 Specification"
<a name="templates.homepage.md"></a>

# Homepage


The home page of a website is often formatted differently than the other
pages. In Hugo you can define your own homepage template.

Homepage is of the type "node" and have all the [node
variables](#templates.variables.md) and [site
variables](#templates.variables.md) available to use in the templates.

*This is the only required template for building a site and useful when
bootstrapping a new site and template. It is also the only required
template when using a single page site.*

In addition to the standard node variables, the homepage has access to
all site content accessible from `.Data.Pages`. Details on how to use the
list of pages can be found in the [Lists Template](#templates.list.md).

## Which Template will be rendered?
Hugo uses a set of rules to figure out which template to use when
rendering a specific page.

Hugo will use the following prioritized list. If a file isn’t present,
then the next one in the list will be used. This enables you to craft
specific layouts when you want to without creating more templates
than necessary. For most sites, only the \_default file at the end of
the list will be needed.

* /layouts/index.html
* /layouts/\_default/list.html
* /layouts/\_default/single.html
* /themes/`THEME`/layouts/index.html
* /themes/`THEME`/layouts/\_default/list.html
* /themes/`THEME`/layouts/\_default/single.html

## Example index.html
This content template is used for [spf13.com](http://spf13.com).

It makes use of [partial templates](#templates.partials.md) and uses a similar approach as a [List](#templates.list.md).

    <!DOCTYPE html>
    <html class="no-js" lang="en-US" prefix="og: http://ogp.me/ns# fb: http://ogp.me/ns/fb#">
    <head>
        <meta charset="utf-8">

        {{ partial "meta.html" . }}

        <base href="{{ .Site.BaseUrl }}">
        <title>{{ .Site.Title }}</title>
        <link rel="canonical" href="{{ .Permalink }}">
        <link href="{{ .RSSlink }}" rel="alternate" type="application/rss+xml" title="{{ .Site.Title }}" />

        {{ partial "head_includes.html" . }}
    </head>
    <body lang="en">

    {{ partial "subheader.html" . }}

    <section id="main">
      <div>
        {{ range first 10 .Data.Pages }}
            {{ .Render "summary"}}
        {{ end }}
      </div>
    </section>

    {{ partial "footer.html" }}
<a name="templates.terms.md"></a>

# Taxonomy Terms Template


A unique template is needed to create a list of the terms for a given
taxonomy. This is different from the [list template](#templates.list.md)
as that template is a list of content, where this is a list of meta data.

## Which Template will be rendered?
Hugo uses a set of rules to figure out which template to use when
rendering a specific page.

Hugo will use the following prioritized list. If a file isn’t present,
then the next one in the list will be used. This enables you to craft
specific layouts when you want to without creating more templates
than necessary. For most sites only the \_default file at the end of
the list will be needed.

A Taxonomy Terms List will be rendered at /`PLURAL`/

* /layouts/taxonomy/`SINGLE`.terms.html
* /layouts/\_default/terms.html

If that neither file is found in either the /layouts or /theme/layouts
directory than hugo will not render the taxonomy terms pages. It is also
common for people to render taxonomy terms lists on other pages such as
the homepage or the sidebar (such as a tag cloud) and not have a
dedicated page for the terms.

## Variables

Taxonomy Terms pages are of the type "node" and have all the [node
variables](#templates.variables.md) and [site
variables](#templates.variables.md) available to use in the templates.

Taxonomy Terms pages will additionally have:

* **.Data.Singular** The singular name of the taxonomy
* **.Data.Plural** The plural name of the taxonomy
* **.Data.Terms** The taxonomy itself
* **.Data.Terms.Alphabetical** The Terms alphabetized
* **.Data.Terms.ByCount** The Terms ordered by popularity

## Example terms.html file

List pages are of the type "node" and have all the [node
variables](#templates.variables.md) and [site
variables](#templates.variables.md) available to use in the templates.

This content template is used for [spf13.com](http://spf13.com).
It makes use of [partial templates](#templates.partials.md). The list of indexes
templates cannot use a [content view](#templates.views.md) as they don't display the content, but
rather information about the content.

This particular template lists all of the Tags used on
[spf13.com](http://spf13.com) and provides a count for the number of pieces of
content tagged with each tag.

`.Data.Terms` is an map of terms ⇒ [contents]

    {{ partial "header.html" . }}
    {{ partial "subheader.html" . }}

    <section id="main">
      <div>
       <h1 id="title">{{ .Title }}</h1>

       <ul>
       {{ $data := .Data }}
        {{ range $key, $value := .Data.Terms }}
        <li><a href="{{ $data.Plural }}/{{ $key | urlize }}"> {{ $key }} </a> {{ len $value }} </li>
        {{ end }}
       </ul>
      </div>
    </section>

    {{ partial "footer.html" }}


Another example listing the content for each term (ordered by Date)


    {{ partial "header.html" . }}
    {{ partial "subheader.html" . }}

    <section id="main">
      <div>
       <h1 id="title">{{ .Title }}</h1>

        {{ $data := .Data }}
        {{ range $key,$value := .Data.Terms.ByCount }}
        <h2><a href="{{ $data.Plural }}/{{ $value.Name | urlize }}"> {{ $value.Name }} </a> {{ $value.Count }} </h2>
        <ul>
            {{ range $value.Pages.ByDate }}
            <li>
                <a href="{{ .Permalink }}">{{ .Title }}</a>
            </li>
            {{ end }}
        </ul>
        {{ end }}
      </div>
    </section>

    {{ partial "footer.html" }}

## Ordering

Hugo can order the meta data in two different ways. It can be ordered by the
number of content assigned to that key or alphabetically.


## Example indexes.html file (alphabetical)

    {{ partial "header.html" . }}
    {{ partial "subheader.html" . }}

    <section id="main">
      <div>
       <h1 id="title">{{ .Title }}</h1>
       <ul>
       {{ $data := .Data }}
        {{ range $key, $value := .Data.Terms.Alphabetical }}
        <li><a href="{{ $data.Plural }}/{{ $value.Name | urlize }}"> {{ $value.Name }} </a> {{ $value.Count }} </li>
        {{ end }}
       </ul>
      </div>
    </section>
    {{ partial "footer.html" }}

## Example indexes.html file (ordered)

    {{ partial "header.html" . }}
    {{ partial "subheader.html" . }}

    <section id="main">
      <div>
       <h1 id="title">{{ .Title }}</h1>
       <ul>
       {{ $data := .Data }}
        {{ range $key, $value := .Data.Terms.ByCount }}
        <li><a href="{{ $data.Plural }}/{{ $value.Name | urlize }}"> {{ $value.Name }} </a> {{ $value.Count }} </li>
        {{ end }}
       </ul>
      </div>
    </section>

    {{ partial "footer.html" }}

<a name="templates.views.md"></a>

# Content Views


In addition to the [single content template](#templates.content.md), Hugo can render alternative views of
your content. These are especially useful in [list templates](#templates.list.md).

For example you may want content of every type to be shown on the
homepage, but only a summary view of it there. Perhaps on a taxonomy
list page you would only want a bulleted list of your content. Views
make this very straightforward by delegating the rendering of each
different type of content to the content itself.


## Creating a content view

To create a new view, simply create a template in each of your different
content type directories with the view name. In the following example, we
have created a "li" view and a "summary" view for our two content types
of post and project. As you can see, these sit next to the [single
content view](#templates.content.md) template "single.html". You can even
provide a specific view for a given type and continue to use the
\_default/single.html for the primary view.

    ▾ layouts/
      ▾ post/
          li.html
          single.html
          summary.html
      ▾ project/
          li.html
          single.html
          summary.html

Hugo also has support for a default content template to be used in the event
that a specific template has not been provided for that type. The default type
works the same as the other types, but the directory must be called "_default".
Content views can also be defined in the "_default" directory.


    ▾ layouts/
      ▾ _default/
          li.html
          single.html
          summary.html


## Which Template will be rendered?
Hugo uses a set of rules to figure out which template to use when
rendering a specific page.

Hugo will use the following prioritized list. If a file isn’t present,
then the next one in the list will be used. This enables you to craft
specific layouts when you want to without creating more templates
than necessary. For most sites only the \_default file at the end of
the list will be needed.

* /layouts/`TYPE`/`VIEW`.html
* /layouts/\_default/`VIEW`.html
* /themes/`THEME`/layouts/`TYPE`/`VIEW`.html
* /themes/`THEME`/layouts/\_default/`view`.html


## Example using views

### rendering view inside of a list

Using the summary view (defined below) inside of a ([list
templates](#templates.list.md)).

    <section id="main">
    <div>
    <h1 id="title">{{ .Title }}</h1>
    {{ range .Data.Pages }}
    {{ .Render "summary"}}
    {{ end }}
    </div>
    </section>

In the above example, you will notice that we have called `.Render` and passed in
which view to render the content with. `.Render` is a special function available on
a content which tells the content to render itself with the provided view template.
In this example, we are not using the li view. To use this we would
change the render line to `{{ .Render "li" }}`.


### li.html

Hugo will pass the entire page object to the view template. See [page
variables](#templates.variables.md) for a complete list.

This content template is used for [spf13.com](http://spf13.com).

    <li>
    <a href="{{ .Permalink }}">{{ .Title }}</a>
    <div class="meta">{{ .Date.Format "Mon, Jan 2, 2006" }}</div>
    </li>

### summary.html

Hugo will pass the entire page object to the view template. See [page
variables](#templates.variables.md) for a complete list.

This content template is used for [spf13.com](http://spf13.com).

    <article class="post">
    <header>
    <h2><a href='{{ .Permalink }}'> {{ .Title }}</a> </h2>
    <div class="post-meta">{{ .Date.Format "Mon, Jan 2, 2006" }} - {{ .FuzzyWordCount }} Words </div>
    </header>

    {{ .Summary }}
    <footer>
    <a href='{{ .Permalink }}'><nobr>Read more →</nobr></a>
    </footer>
    </article>


<a name="templates.partials.md"></a>

# Partial Templates


In practice, it's very convenient to split out common template portions into a
partial template that can be included anywhere. As you create the rest of your
templates, you will include templates from the /layout/partials directory.

Partials are especially important for themes as it gives users an opportunity
to overwrite just a small part of your theme, while maintaining future compatibility.

Theme developers may want to include a few partials with empty HTML
files in the theme just so end users have an easy place to inject their
customized content.

I've found it helpful to include a header and footer template in
partials so I can include those in all the full page layouts.  There is
nothing special about header.html and footer.html other than they seem
like good names to use for inclusion in your other templates.

    ▾ layouts/
      ▾ partials/
          header.html
          footer.html

By ensuring that we only reference [variables](#layout.variables.md)
used for both nodes and pages, we can use the same partials for both.

## Partial vs Template

Version v0.12 of Hugo introduced the `partial` call inside the template system.
This is a change to the way partials were handled previously inside the
template system. In earlier versions, Hugo didn’t treat partials specially, and
you could include a partial template with the `template` call in the standard
template language.

With the addition of the theme system in v0.11, it became apparent that a theme
& override aware partial was needed.

When using Hugo v0.12 and above, please use the `partial` call (and leave out
the “partial/” path). The old approach would still work, but wouldn’t benefit from
the ability to have users override the partial theme file with local layouts.

## Example header.html
This header template is used for [spf13.com](http://spf13.com):

    <!DOCTYPE html>
    <html class="no-js" lang="en-US" prefix="og: http://ogp.me/ns# fb: http://ogp.me/ns/fb#">
    <head>
        <meta charset="utf-8">

        {{ partial "meta.html" . }}

        <base href="{{ .Site.BaseUrl }}">
        <title> {{ .Title }} : spf13.com </title>
        <link rel="canonical" href="{{ .Permalink }}">
        {{ if .RSSlink }}<link href="{{ .RSSlink }}" rel="alternate" type="application/rss+xml" title="{{ .Title }}" />{{ end }}

        {{ partial "head_includes.html" . }}
    </head>
    <body lang="en">

## Example footer.html
This footer template is used for [spf13.com](http://spf13.com):

    <footer>
      <div>
        <p>
        &copy; 2013-14 Steve Francia.
        <a href="http://creativecommons.org/licenses/by/3.0/" title="Creative Commons Attribution">Some rights reserved</a>;
        please attribute properly and link back. Hosted by <a href="http://servergrove.com">ServerGrove</a>.
        </p>
      </div>
    </footer>
    <script type="text/javascript">

      var _gaq = _gaq || [];
      _gaq.push(['_setAccount', 'UA-XYSYXYSY-X']);
      _gaq.push(['_trackPageview']);

      (function() {
        var ga = document.createElement('script');
        ga.src = ('https:' == document.location.protocol ? 'https://ssl' :
            'http://www') + '.google-analytics.com/ga.js';
        ga.setAttribute('async', 'true');
        document.documentElement.firstChild.appendChild(ga);
      })();

    </script>
    </body>
    </html>

**For examples of referencing these templates, see [single content
templates](#templates.content.md), [list templates](#templates.list.md) and [homepage templates](#templates.homepage.md).**
<a name="templates.rss.md"></a>

# RSS (feed) Templates


Like all other templates, you can use a single RSS template to generate
all of your RSS feeds, or you can create a specific template for each
individual feed. Unlike other templates, *Hugo ships with its own
[RSS 2.0 template](#the-embedded-rss-xml:eceb479b7b3b2077408a2878a29e1320).
In most cases this will be sufficient, and an RSS
template will not need to be provided by the user.*

RSS pages are of the type "node" and have all the [node
variables](#layout.variables.md) available to use in the templates.


## Which Template will be rendered?
Hugo uses a set of rules to figure out which template to use when
rendering a specific page.

Hugo will use the following prioritized list. If a file isn’t present,
then the next one in the list will be used. This enables you to craft
specific layouts when you want to without creating more templates
than necessary. For most sites only the \_default file at the end of
the list will be needed.

### Main RSS

* /layouts/rss.xml
* /layouts/\_default/rss.xml
* \__internal/rss.xml

### Section RSS

* /layouts/section/`SECTION`.rss.xml
* /layouts/\_default/rss.xml
* /themes/`THEME`/layouts/section/`SECTION`.rss.xml
* /themes/`THEME`/layouts/\_default/rss.xml
* \__internal/rss.xml

### Taxonomy RSS

* /layouts/taxonomy/`SINGULAR`.rss.xml
* /layouts/\_default/rss.xml
* /themes/`THEME`/layouts/taxonomy/`SINGULAR`.rss.xml
* /themes/`THEME`/layouts/\_default/rss.xml
* \__internal/rss.xml


## Configuring RSS

If the following are provided in the site’s config file, then they
will be included in the RSS output. Example values are provided.

    languageCode = "en-us"
    copyright = "This work is licensed under a Creative Commons Attribution-ShareAlike 4.0 International License."

    [author]
        name = "My Name Here"


## The Embedded rss.xml
This is the RSS template that ships with Hugo. It adheres to the
[RSS 2.0 Specification][RSS 2.0].

    <rss version="2.0" xmlns:atom="http://www.w3.org/2005/Atom">
      <channel>
          <title>{{ .Title }} on {{ .Site.Title }} </title>
          <generator uri="https://gohugo.io">Hugo</generator>
        <link>{{ .Permalink }}</link>
        {{ with .Site.LanguageCode }}<language>{{.}}</language>{{end}}
        {{ with .Site.Author.name }}<author>{{.}}</author>{{end}}
        {{ with .Site.Copyright }}<copyright>{{.}}</copyright>{{end}}
        <updated>{{ .Date.Format "Mon, 02 Jan 2006 15:04:05 MST" }}</updated>
        {{ range first 15 .Data.Pages }}
        <item>
          <title>{{ .Title }}</title>
          <link>{{ .Permalink }}</link>
          <pubDate>{{ .Date.Format "Mon, 02 Jan 2006 15:04:05 MST" }}</pubDate>
          {{with .Site.Author.name}}<author>{{.}}</author>{{end}}
          <guid>{{ .Permalink }}</guid>
          <description>{{ .Content | html }}</description>
        </item>
        {{ end }}
      </channel>
    </rss>

*Important: Hugo will automatically add the following header line to this file
on render… please don't include this in the template as it's not valid HTML.*

    <?xml version="1.0" encoding="utf-8" standalone="yes" ?>


[RSS 2.0]: http://cyber.law.harvard.edu/rss/rss.html "RSS 2.0 Specification"
<a name="templates.sitemap.md"></a>

# Sitemap Template


A single Sitemap template is used to generate the `sitemap.xml` file.
Hugo automatically comes with this template file. **No work is needed on
the users' part unless they want to customize `sitemap.xml`.**

This page is of the type "node" and have all the [node
variables](#layout.variables.md) available to use in this template
along with Sitemap-specific ones:

**.Sitemap.ChangeFreq** The page change frequency<br>
**.Sitemap.Priority** The priority of the page<br>

In addition to the standard node variables, the homepage has access to all
site pages through `.Data.Pages`.

If provided, Hugo will use `/layouts/sitemap.xml` instead of the internal
one.

## Hugo’s sitemap.xml

This template respects the version 0.9 of the [Sitemap
Protocol](http://www.sitemaps.org/protocol.html).

    <urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9">
      {{ range .Data.Pages }}
      <url>
        <loc>{{ .Permalink }}</loc>
        <lastmod>{{ safeHtml ( .Date.Format "2006-01-02T15:04:05-07:00" ) }}</lastmod>{{ with .Sitemap.ChangeFreq }}
        <changefreq>{{ . }}</changefreq>{{ end }}{{ if ge .Sitemap.Priority 0.0 }}
        <priority>{{ .Sitemap.Priority }}</priority>{{ end }}
      </url>
      {{ end }}
    </urlset>

***Important:** Hugo will automatically add the following header line to this file
on render. Please don't include this in the template as it's not valid HTML.*

    <?xml version="1.0" encoding="utf-8" standalone="yes" ?>
<a name="templates.404.md"></a>

# 404.html Templates


When using Hugo with [GitHub Pages](http://pages.github.com/), you can provide
your own template for a [custom 404 error page](https://help.github.com/articles/custom-404-pages/) by creating a 404.html file in the root.

404 pages are of the type "node" and have all the [node
variables](#layout.variables.md) available to use in the templates.

In addition to the standard node variables, the 404 page has access to
all site content accessible from `.Data.Pages`.

    ▾ layouts/
        404.html

## 404.html

This is a basic example of a 404.html template:

    {{ partial "header.html" . }}
    {{ partial "subheader.html" . }}

    <section id="main">
      <div>
       <h1 id="title">{{ .Title }}</h1>
      </div>
    </section>

    {{ partial "footer.html" }}

<a name="taxonomies.overview.md"></a>

# Taxonomy Overview


Hugo includes support for user-defined groupings of content called
taxonomies. Taxonomies give us a way to classify our content so we can
demonstrate relationships in a variety of logical ways.

The default taxonomies for Hugo are tags and categories. These
taxonomies are common to many website systems (e.g. WordPress, Drupal,
Jekyll). Unlike all of those systems, Hugo makes it trivial to customize
the taxonomies you will be using for your site however you wish. Another
good use for taxonomies is to group a set of posts into a series. Other
common uses would include categories, tags, groups, series and many
more.

When taxonomies are used (and templates are provided), Hugo will
automatically create pages listing all of the taxonomies, their terms
and all of the content attached to those terms.

## Definitions

**Taxonomy:** A categorization that can be used to classify content

**Term:** A key within that taxonomy

**Value:** A piece of content assigned to that Term

## Example

For example, if I was writing about movies, I may want the following
taxonomies:

* Actors
* Directors
* Studios
* Genre
* Year
* Awards

I would then specify in each movie’s front-matter the specific terms for
each of those taxonomies. Hugo would then automatically create pages for
each Actor, Director, Studio, Genre, Year and Award listing all of the
Movies that matched that specific Actor, Director, etc.


### Taxonomy Organization

Let’s use an example to demonstrate the different labels in action.
From the perspective of the taxonomy, it could be visualized as:

    Actor                    <- Taxonomy
        Bruce Willis         <- Term
            The Six Sense    <- Content
            Unbreakable      <- Content
            Moonrise Kingdom <- Content
        Samuel L. Jackson    <- Term
            Unbreakable      <- Content
            The Avengers     <- Content
            xXx              <- Content

From the perspective of the content, it would appear differently, though
the data and labels used are the same:

    Unbreakable                 <- Content
        Actors                  <- Taxonomy
            Bruce Willis        <- Term
            Samuel L. Jackson   <- Term
        Director                <- Taxonomy
            M. Night Shyamalan  <- Term
        ...
    Moonrise Kingdom            <- Content
        Actors                  <- Taxonomy
            Bruce Willis        <- Term
            Bill Murray         <- Term
        Director                <- Taxonomy
            Wes Anderson        <- Term
        ...

<a name="taxonomies.usage.md"></a>

# Using Taxonomies


## Defining taxonomies for a site

Taxonomies must be defined in the site configuration before they can be
used throughout the site. You need to provide both the plural and
singular labels for each taxonomy.

Here is an example configuration in YAML that specifies three taxonomies
(the default two, plus `series`).

Notice the format is **singular key** : *plural value*.
### config.yaml

    ---
    Taxonomies:
        tag: "tags"
        category: "categories"
        series: "series"
    ---

## Assigning taxonomy values to content

Once an taxonomy is defined at the site level, any piece of content
can be assigned to it regardless of content type or section.

Assigning content to an taxonomy is done in the front matter.
Simply create a variable with the *plural* name of the taxonomy
and assign all terms you want to apply to this content.

**taxonomy values are case insensitive**

### Front Matter Example (in TOML)

    +++
    title = "Hugo: A fast and flexible static site generator"
    tags = [ "Development", "Go", "fast", "Blogging" ]
    categories = [ "Development" ]
    series = [ "Go Web Dev" ]
    slug = "hugo"
    project_url = "http://github.com/spf13/hugo"
    +++

### Front Matter Example (in JSON)

    {
        "title": "Hugo: A fast and flexible static site generator",
        "tags": [
            "Development",
            "Go",
            "fast",
            "Blogging"
        ],
        "categories" : [
            "Development"
        ],
        "series" : [
            "Go Web Dev"
        ],
        "slug": "hugo",
        "project_url": "http://github.com/spf13/hugo"
    }
<a name="taxonomies.displaying.md"></a>

# Displaying Taxonomies


There are four common ways you can display the data in your
taxonomies in addition to the automatic taxonomy pages created by hugo
using the [list templates](#templates.list.md):

1. For a given piece of content, you can list the terms attached
2. For a given piece of content, you can list other content with the same
   term
3. You can list all terms for a taxonomy
4. You can list all taxonomies (with their terms)

## 1. Displaying taxonomy terms assigned to this content

Within your content templates, you may wish to display
the taxonomies that that piece of content is assigned to.

Because we are leveraging the front matter system to
define taxonomies for content, the taxonomies assigned to
each content piece are located in the usual place
(.Params.`plural`).

### Example

    <ul id="tags">
      {{ range .Params.tags }}
        <li><a href="tags/{{ . | urlize }}">{{ . }}</a> </li>
      {{ end }}
    </ul>

## 2. Listing content with the same taxonomy term

First, you may be asking why you would use this. If you are using a
taxonomy for something like a series of posts, this is exactly how you
would do it. It’s also an quick and dirty way to show some related
content.


### Example

    <ul>
      {{ range .Site.Taxonomies.series.golang }}
        <li><a href="{{ .Url }}">{{ .Name }}</a></li>
      {{ end }}
    </ul>

## 3. Listing all content in a given taxonomy

This would be very useful in a sidebar as “featured content”. You could
even have different sections of “featured content” by assigning
different terms to the content.

### Example

    <section id="menu">
        <ul>
            {{ range $key, $taxonomy := .Site.Taxonomies.featured }}
            <li> {{ $key }} </li>
            <ul>
                {{ range $taxonomy.Pages }}
                <li hugo-nav="{{ .RelPermalink}}"><a href="{{ .Permalink}}"> {{ .LinkTitle }} </a> </li>
                {{ end }}
            </ul>
            {{ end }}
        </ul>
    </section>


## 4. Rendering a Site's Taxonomies

If you wish to display the list of all keys for an taxonomy, you can find retrieve
them from the `.Site` variable which is available on every page.

This may take the form of a tag cloud, a menu or simply a list.

The following example displays all tag keys:

### Example

    <ul id="all-tags">
      {{ range $name, $taxonomy := .Site.Taxonomies.tags }}
        <li><a href="/tags/{{ $name | urlize }}">{{ $name }}</a></li>
      {{ end }}
    </ul>

### Complete Example
This example will list all taxonomies, each of their keys and all the content assigned to each key.

    <section>
      <ul>
        {{ range $taxonomyname, $taxonomy := .Site.Taxonomies }}
          <li><a href="/{{ $taxonomyname | urlize }}">{{ $taxonomyname }}</a>
            <ul>
              {{ range $key, $value := $taxonomy }}
              <li> {{ $key }} </li>
                    <ul>
                    {{ range $value.Pages }}
                        <li hugo-nav="{{ .RelPermalink}}"><a href="{{ .Permalink}}"> {{ .LinkTitle }} </a> </li>
                    {{ end }}
                    </ul>
              {{ end }}
            </ul>
          </li>
        {{ end }}
      </ul>
    </section>

<a name="taxonomies.templates.md"></a>

# Taxonomy Templates


There are two different templates that the use of taxonomies will require you to provide.

Both templates are covered in detail in the templates section.

A [list template](#templates.list.md) is any template that will be used to render multiple pieces of
content in a single html page. This template will be used to generate
all the automatically created taxonomy pages.

A [taxonomy terms template](#templates.terms.md) is a template used to
generate the list of terms for a given template.

<a name="taxonomies.ordering.md"></a>

# Ordering Taxonomies


Hugo provides the ability to both:

 1. Order the way the keys for an taxonomy are displayed
 2. Order the way taxonomyed content appears


## Ordering Taxonomies
Taxonomies can be ordered by either alphabetical key or by the number of content pieces assigned to that key.

### Order Alphabetically Example:

    <ul>
    {{ $data := .Data }}
    {{ range $key, $value := .Data.Taxonomy.Alphabetical }}
    <li><a href="{{ $data.Plural }}/{{ $value.Name | urlize }}"> {{ $value.Name }} </a> {{ $value.Count }} </li>
    {{ end }}
    </ul>

### Order by Popularity Example:

    <ul>
    {{ $data := .Data }}
    {{ range $key, $value := .Data.Taxonomy.ByCount }}
    <li><a href="{{ $data.Plural }}/{{ $value.Name | urlize }}"> {{ $value.Name }} </a> {{ $value.Count }} </li>
    {{ end }}
    </ul>


[See Also Taxonomy Lists](#taxonomies.lists.md)

## Ordering Content within Taxonomies

Hugo uses both **Date** and **Weight** to order content within taxonomies.

Each piece of content in Hugo can optionally be assigned a date.
It can also be assigned a weight for each taxonomy it is assigned to.

When iterating over content within taxonomies the default sort is first by weight then by date. This means that if the weights for two pieces of content are the same, than the more recent content will be displayed first. The default weight for any piece of content is 0.

### Assigning Weight

Content can be assigned weight for each taxonomy that it's assigned to.

    +++
    tags = [ "a", "b", "c" ]
    tags_weight = 22
    categories = ["d"]
    title = "foo"
    categories_weight = 44
    +++
    Front Matter with weighted tags and categories


The convention is `taxonomyname_weight`.

In the above example, this piece of content has a weight of 22 which applies to the sorting when rendering the pages assigned to the "a", "b" and "c" values of the 'tag' taxonomy.

It has also been assigned the weight of 44 when rendering the 'd' category.

With this the same piece of content can appear in different positions in different taxonomies.

Currently taxonomies only support the default ordering of content which is weight -> date.
<a name="taxonomies.methods.md"></a>

# Using Taxonomies


Hugo makes a set of values and methods available on the various Taxonomy structures.

## Taxonomy Methods

A Taxonomy is a `map[string]WeightedPages`.

**.Get(term)** Returns the WeightedPages for a term. <br>
**.Count(term)** The number of pieces of content assigned to this term.<br>
**.Alphabetical** Returns an OrderedTaxonomy (slice) ordered by Term. <br>
**.ByCount** Returns an OrderedTaxonomy (slice) ordered by number of entries. <br>

## OrderedTaxonomy

Since Maps are unordered, an OrderedTaxonomy is a special structure that has a defined order.

    []struct {
        Name          string
        WeightedPages WeightedPages
    }

Each element of the slice has:

**.Term**  The Term used.<br>
**.WeightedPages**  A slice of Weighted Pages.<br>
**.Count** The number of pieces of content assigned to this term.<br>
**.Pages**  All Pages assigned to this term. All [list methods](#templates.list.md) are available to this.<br>

## WeightedPages

WeightedPages is simply a slice of WeightedPage.

    type WeightedPages []WeightedPage

**.Count(term)** The number of pieces of content assigned to this term.<br>
**.Pages** Returns a slice of pages, which then can be ordered using any of the [list methods](#templates.list.md). <br>







<a name="extras.aliases.md"></a>

# Aliases


For people migrating existing published content to Hugo, there's a good chance
you need a mechanism to handle redirecting old URLs.

Luckily, this can be handled easily with aliases in Hugo.

## Example
**content/posts/my-awesome-blog-post.md**

<table class="table">
<tr>
<th>TOML</th><th>YAML</th>
</tr>
<tr valign="top">
<td><pre><code>---
aliases:
    - /posts/my-original-url/
    - /2010/even-earlier-url.html
---
</code></pre></td>
<td><pre><code>+++
aliases = [
    "/posts/my-original-url/",
    "/2010/even-earlier-url.html"
]
+++
</code></pre></td>
</tr>
</table>

Now when you go to any of the aliases locations, they
will redirect to the page.

## Important Behaviors

1. *Hugo makes no assumptions about aliases. They also don't change based
on your UglyUrls setting. You need to provide absolute path to your webroot and the
complete filename or directory.*

2. *Aliases are rendered prior to any content and will be overwritten by
any content with the same location.*
<a name="extras.builders.md"></a>

# Hugo Builders


Hugo provides the functionality to quickly get a site, theme or page
started.


## New Site

Want to get a site built quickly?

    $ hugo new site /path/to/site

Hugo will create all the needed directories and files to get started
quickly.

Hugo will only touch the files and create the directories (in the right
places), [configuration](#overview.configuration.md) and content are up to
you... but luckily we have builders for content (see below).

## New Theme

Want to design a new theme?

    $ hugo new theme THEME_NAME

Run from your working directory, this will create a new theme with all
the needed files in your themes directory. Hugo will provide you with a
license and theme.toml file with most of the work done for you.

Follow the [Theme Creation Guide](#themes.creation.md) once the builder is
done.

## New Content

You will use this builder the most of all. Every time you want to create
a new piece of content, the content builder will get you started right.

Leveraging [content archetypes](#content.archetypes.md) the content builder
will not only insert the current date and appropriate metadata, but it
will pre-populate values based on the content type.

    $ hugo new relative/path/to/content

This assumes it is being run from your working directory and the content
path starts from your content directory.

I typically keep two different terminals open, one to run `hugo server
--watch`, and another to use the builders to create new content.
<a name="extras.comments.md"></a>

# Comments in Hugo


As Hugo is a static site generator, the content produced is static and
doesn’t interact with the users. The most common interaction people ask
for is comment capability.

Hugo ships with support for [Disqus](https://disqus.com), a third-party
service that provides comment and community capabilities to website via
JavaScript.

Your theme may already support Disqus, but even it if doesn’t, it is easy
to add.

# Disqus Support

## Adding Disqus to a template

Hugo comes with all the code you would need to include load Disqus.
Simply include the following line where you want your comments to appear:

    {{ template "_internal/disqus.html" . }}


## Configuring Disqus

That template requires you to set a single value in your site config file, e.g. config.yaml.

    disqusShortname = "XYW"

Additionally, you can optionally set the following in the front matter
for a given piece of content:

 * **disqus_identifier**
 * **disqus_title**
 * **disqus_url**


## Conditional Loading of Disqus Comments

Users have noticed that enabling Disqus comments when running the Hugo web server on localhost causes the creation of unwanted discussions on the associated Disqus account. In order to prevent this, a slightly tweaked partial template is required. So, rather than using the built-in `"_internal/disqus.html"` template referenced above, create a template in your `partials` folder that looks like this:

```javascript
<div id="disqus_thread"></div>
<script type="text/javascript">

(function() {
    // Don't ever inject Disqus on localhost--it creates unwanted
    // discussions from 'localhost:1313' on your Disqus account...
    if (window.location.hostname == "localhost")
        return;

    var dsq = document.createElement('script'); dsq.type = 'text/javascript'; dsq.async = true;
    var disqus_shortname = '{{ .Site.Params.disqusShortname }}';
    dsq.src = '//' + disqus_shortname + '.disqus.com/embed.js';
    (document.getElementsByTagName('head')[0] || document.getElementsByTagName('body')[0]).appendChild(dsq);
})();
</script>
<noscript>Please enable JavaScript to view the <a href="http://disqus.com/?ref_noscript">comments powered by Disqus.</a></noscript>
<a href="http://disqus.com" class="dsq-brlink">comments powered by <span class="logo-disqus">Disqus</span></a>
```

Notice that there is a simple `if` statement that detects when you are running on localhost and skips the initialization of the Disqus comment injection.

Now, reference the partial template from your page template:

    {{ partial "disqus.html" . }}


# Alternatives

A few alternatives exist to [Disqus](https://disqus.com):

* [IntenseDebate](http://intensedebate.com/)
* [Livefyre](http://livefyre.com/)
* [Muut](http://muut.com)
* [多说](http://duoshuo.com/) ([Duoshuo](http://duoshuo.com/), popular in China)
* [Kaiju](http://github.com/spf13/kaiju)


[Kaiju](http://github.com/spf13/kaiju) is an open-source project started
by [spf13](http://spf13.com) (Hugo’s author) to bring easy and fast real
time discussions to the web.

Written using Go, Socket.io and MongoDB, it is very fast and easy to
deploy.

It is in early development but shows promise. If you have interest,
please help by contributing whether via a pull request, an issue or even
just a tweet. Everything helps.

<a name="extras.crossreferences.md"></a>

# Cross-References


Hugo makes it easy to link documents together with the `ref` and `relref` shortcodes. These shortcodes are also used to safely provide links to headings inside of your content, whether across documents or within a document. The only difference between `ref` and `relref` is whether the resulting URL is absolute (`http://1.com/about/`) or relative (`/about/`).

## Using `ref` and `relref`

    {{</* ref "document" */>}}
    {{</* ref "#anchor" */>}}
    {{</* ref "document#anchor" */>}}
    {{</* relref "document" */>}}
    {{</* relref "#anchor" */>}}
    {{</* relref "document#anchor" */>}}

The single parameter to `ref` is a string with a content _document name_ (`about.md`), an in-document _anchor_ (`#who`), or both (`about.md#who`).

### Document Names

The _document name_ is the name of a document including the format extension; this may be just the filename, or the relative path from the `content/` directory. With a document `content/blog/post.md`, either format will produce the same result.

    {{</* relref "blog/post.md" */>}} ⇒ `/blog/post/`
    {{</* relref "post.md" */>}} ⇒ `/blog/post/`

If you have multiple sections with the same filename, you should only use the relative path format, because the behaviour is _undefined_. So, if I also have a document `link/post.md`, the output of `ref` is unknown for `post.md`.

    {{</* relref "blog/post.md" */>}} ⇒ `/blog/post/`
    {{</* relref "post.md" */>}} ⇒ `/blog/post/` (maybe)
    {{</* relref "post.md" */>}} ⇒ `/link/post/` (maybe)
    {{</* relref "link/post.md" */>}} ⇒ `/link/post/`

A relative document name must *not* begin with a slash (`/`).

    {{</* relref "/blog/post.md" */>}} ⇒ `""`

### Anchors

When an _anchor_ is provided by itself, the current page’s unique identifier will be appended; when an _anchor_ is provided with a document name, the found page's unique identifier will be appended.

    {{</* relref "#who" */>}} ⇒ `#who:9decaf7`
    {{</* relref "blog/post.md#who" */>}} ⇒ `/blog/post/#who:badcafe`

More information about document unique identifiers and headings can be found [below]({{< ref "#hugo-heading-anchors" >}}).

### Examples

* `{{</* ref "blog/post.md" */>}}` ⇒ `http://1.com/blog/post/`
* `{{</* ref "post.md#tldr" */>}}` ⇒ `http://1.com/blog/post/#tldr:caffebad`
* `{{</* relref "post.md" */>}}` ⇒ `/blog/post/`
* `{{</* relref "blog/post.md#tldr" */>}}` ⇒ `/blog/post/#tldr:caffebad`
* `{{</* ref "#tldr" */>}}` ⇒ `#tldr:badcaffe`
* `{{</* relref "#tldr" */>}}` ⇒ `#tldr:badcaffe`

## Hugo Heading Anchors

When using Markdown document types, Hugo generates heading anchors automatically. The generated anchor for this section is `hugo-heading-anchors`. Because the heading anchors are generated automatically, Hugo takes some effort to ensure that heading anchors are unique both inside a document and across the entire site.

Ensuring heading uniqueness across the site is accomplished with a unique identifier for each document based on its path. Unless a document is renamed or moved between sections *in the filesystem*, the unique identifier for the document will not change: `blog/post.md` will always have a unique identifier of `81df004c333b392d34a49fd3a91ba720`.

`ref` and `relref` were added so you can make these reference links without having to know the document’s unique identifier. (The links in document tables of contents are automatically up-to-date with this value.)

    {{</* relref "extras/crossreferences.md#hugo-heading-anchors" */>}}
    /extras/crossreferences/#hugo-heading-anchors:77cd9ea530577debf4ce0f28c8dca242

> What follows is a deeper discussion of *why* and *how* Hugo generates heading anchors. It is not necessary to know this to use `ref` and `relref`, but it may be useful in understanding how some anchors may not match your expectations.

### How to Generate a Heading Anchor

Convert the text of the heading to lowercase.

    Hugo: A Fast & Modern Static Web Engine
    hugo: a fast & modern static web engine

Replace anything that isn't an ASCII letter (`a-z`) or number (`0-9`) with a dash (`-`).

    hugo: a fast & modern static web engine
    hugo--a-fast---modern-static-web-engine

Get rid of extra dashes.

    hugo--a-fast---modern-static-web-engine
    hugo-a-fast-modern-static-web-engine

You have just converting the text of a heading to a suitable anchor. If your document has unique heading text, all of the anchors will be unique, too.

#### Specifying Heading Anchors

You can also tell Hugo to use a particular heading anchor.

    # Hugo: A Fast & Modern Static Web Engine {#hugo-main}

Hugo will use `hugo-main` as the heading anchor.

### What About Duplicate Heading Anchors?

The technique outlined above works well enough, but some documents have headings with identical text, like the [shortcodes](#extras.shortcodes.md) page—there are three headings with the text "Example". You can specify heading anchors manually:

    ### Example {#example-1}
    ### Example {#example-2}
    ### Example {#example-3}

It’s easy to forget to do that all the time, and Hugo is smart enough to do it for you. It just adds `-x` to the end of each heading it has already seen.

* `### Example` ⇒ `example`
* `### Example` ⇒ `example-1`
* `### Example` ⇒ `example-2`

Sometimes it's a little harder, but Hugo can recover from those, too, by adding more suffixes:

* `# Heading` ⇒ `heading`
* `# Heading 1` ⇒ `heading-1`
* `# Heading` ⇒ `heading-1-1`
* `# Heading` ⇒ `heading-1-2`
* `# Heading 1` ⇒ `heading-2`

This can even affect specified heading anchors that come after a generated heading anchor.

* `# My Heading` ⇒ `my-heading`
* `# My Heading {#my-heading}` ⇒ `my-heading-1`

> This particular collision and override is unfortunate, but unavoidable because Hugo processes each heading for collision detection as it sees it during conversion.

This technique works well for documents rendered on individual pages, like blog posts. What about on Hugo list pages?

### Unique Heading Anchors in Lists

Hugo converts each document from Markdown independently. it doesn’t know that `blog/post.md` has an "Example" heading that will collide with the "Example" heading in `blog/post2.md`. Even if it did know this, the addition of `blog/post3.md` should not cause the anchors for the headings in the other blog posts to change.

Enter the document’s unique identifier. To prevent this sort of collision on
list pages, Hugo always appends the document's to a generated heading anchor.
So, the "Example" heading in `blog/post.md` actually turns into
`#example:81df004…`, and the "Example" heading in `blog/post2.md` actually
turns into `#example:8cf1599…`. All you have to know is the heading anchor that
was generated, not the document identifier; `ref` and `relref` take care of the
rest for you.

    <a href='{{</* relref "blog/post.md#example" */>}}'>Post Example</a>
    <a href='/blog/post.md#81df004…'>Post Example</a>

    [Post Two Example]({{</* relref "blog/post2.md#example" */>}})
    <a href='/blog/post2.md#8cf1599…'>Post Two Example</a>

Now you know.
<a name="extras.livereload.md"></a>

# LiveReload


Hugo may not be the first static site generator to utilize LiveReload
technology, but it’s the first to do it right.

The combination of Hugo’s insane build speed and LiveReload make
crafting your content pure joy. Virtually instantly after you hit save
your rebuilt content will appear in your browser.

## Using LiveReload

Hugo comes with LiveReload built in. There are no additional packages to
install. A common way to use Hugo while developing a site is to have
Hugo run a server and watch for changes:

    $ hugo server --watch

This will run a full functioning web server while simultaneously
watching your file system for additions, deletions or changes within
your:

 * static files
 * content
 * layouts
 * current theme

Whenever anything changes Hugo will rebuild the site, continue to serve
the content and as soon as the build is finished it will tell the
browser and silently reload the page. Because most hugo builds are so
fast they are barely noticeable, you merely need to glance at your open
browser and you will see the change already there.

This means that keeping the site open on a second monitor (or another
half of your current monitor) allows you to see exactly what your
content looks like without even leaving your text editor.

## Disabling LiveReload

LiveReload works by injecting JavaScript into the pages it
creates that creates a web socket client to the hugo web socket server.

Awesome for development, but not something you would want to do in
production. Since many people use `hugo server --watch` in production to
instantly display any updated content, we’ve made it easy to disable the
LiveReload functionality.

    $ hugo server --watch --disableLiveReload

<a name="extras.menus.md"></a>

# Menus


Hugo has a simple yet powerful menu system that permits content to be
placed in menus with a good degree of control without a lot of work.

Some of the features of Hugo Menus:

* Place content in one or many menus
* Handle nested menus with unlimited depth
* Create menu entries without being attached to any content
* Distinguish active element (and active branch)

## What is a menu?

A menu is a named array of menu entries accessible on the site under
`.Site.Menus` by name. For example, if I have a menu called `main`, I would
access it via `.Site.Menus.main`.

A menu entry has the following properties:

* **Url**        string
* **Name**       string
* **Menu**       string
* **Identifier** string
* **Pre**        template.HTML
* **Post**       template.HTML
* **Weight**     int
* **Parent**     string
* **Children**   Menu

And the following functions:

* **HasChildren** bool

Additionally, there are some relevant functions available on the page:

* **IsMenuCurrent** (menu string, menuEntry *MenuEntry ) bool
* **HasMenuCurrent** (menu string, menuEntry *MenuEntry) bool


## Adding content to menus

Hugo supports a couple of different methods of adding a piece of content
to the front matter.

### Simple

If all you need to do is add an entry to a menu, the simple form works
well.

**A single menu:**

    ---
    menu: "main"
    ---

**Multiple menus:**

    ---
    menu: ["main", "footer"]
    ---


### Advanced

If more control is required, then the advanced approach gives you the
control you want. All of the menu entry properties listed above are
available.

    ---
    menu:
      main:
        parent: 'extras'
        weight: 20
    ---


## Adding (non-content) entries to a menu

You can also add entries to menus that aren’t attached to a piece of
content. This takes place in the sitewide [config file](#overview.configuration.md).

Here’s an example `config.toml`:

    [[menu.main]]
        name = "about hugo"
        pre = "<i class='fa fa-heart'></i>"
        weight = -110
        identifier = "about"
        url = "/about/"
    [[menu.main]]
        name = "getting started"
        pre = "<i class='fa fa-road'></i>"
        weight = -100
        url = "/getting-started/"

And the equivalent example `config.yaml`:

    ---
    menu:
      main:
          - Name: "about hugo"
            Pre: "<i class='fa fa-heart'></i>"
            Weight: -110
            Identifier: "about"
            Url: "/about/"
          - Name: "getting started"
            Pre: "<i class='fa fa-road'></i>"
            Weight: -100
            Url: "/getting-started/"
    ---


**NOTE:** The urls must be relative to the context root. If the `BaseUrl` is `http://example.com/mysite/`, then the urls in the menu must not include the context root `mysite`.

## Nesting

All nesting of content is done via the `parent` field.

The parent of an entry should be the identifier of another entry.
Identifier should be unique (within a menu).

The following order is used to determine identity Identifier > Name >
LinkTitle > Title. This means that the title will be used unless
linktitle is present, etc. In practice Name and Identifier are never
displayed and only used to structure relationships.

In this example, the top level of the menu is defined in the config file
and all content entries are attached to one of these entries via the
`parent` field.

## Rendering menus

Hugo makes no assumptions about how your rendered HTML will be
structured. Instead, it provides all of the functions you will need to be
able to build your menu however you want.


The following is an example:

    <!--sidebar start-->
    <aside>
        <div id="sidebar" class="nav-collapse">
            <!-- sidebar menu start-->
            <ul class="sidebar-menu">
              {{ $currentNode := . }}
              {{ range .Site.Menus.main }}
                  {{ if .HasChildren }}

                <li class="sub-menu{{if $currentNode.HasMenuCurrent "main" . }} active{{end}}">
                <a href="javascript:;" class="">
                    {{ .Pre }}
                    <span>{{ .Name }}</span>
                    <span class="menu-arrow arrow_carrot-right"></span>
                </a>
                <ul class="sub">
                    {{ range .Children }}
                    <li{{if $currentNode.IsMenuCurrent "main" . }} class="active"{{end}}><a href="{{.Url}}"> {{ .Name }} </a> </li>
                    {{ end }}
                </ul>
              {{else}}
                <li>
                <a class="" href="{{.Url}}">
                    {{ .Pre }}
                    <span>{{ .Name }}</span>
                </a>
              {{end}}
              </li>
              {{end}}
                <li> <a href="https://github.com/spf13/hugo/issues" target="blank">Questions and Issues</a> </li>
                <li> <a href="#" target="blank">Edit this Page</a> </li>
            </ul>
            <!-- sidebar menu end-->
        </div>
    </aside>
    <!--sidebar end-->
<a name="extras.permalinks.md"></a>

# Permalinks


By default, content is laid out into the target `publishdir` (public)
namespace matching its layout within the `contentdir` hierarchy.
The `permalinks` site configuration option allows you to adjust this on a
per-section basis.
This will change where the files are written to and will change the page's
internal "canonical" location, such that template references to
`.RelPermalink` will honour the adjustments made as a result of the mappings
in this option.

For instance, if one of your sections is called `post`, and you want to adjust
the canonical path to be hierarchical based on the year and month, then you
might use:

```yaml
permalinks:
  post: /:year/:month/:title/
```

Only the content under `post/` will be so rewritten.
A file named `content/post/sample-entry` which contains a line
`date: 2013-11-18T19:20:00-05:00` might end up with the rendered page
appearing at `public/2013/11/sample-entry/index.html` and be reachable via
the URL <http://yoursite.example.com/2013/11/sample-entry/>.

The following is a list of values that can be used in a permalink definition.
All references to time are dependent on the content's date.

  * **:year** the 4-digit year
  * **:month** the 2-digit month
  * **:monthname** the name of the month
  * **:day** the 2-digit day
  * **:weekday** the 1-digit day of the week (Sunday = 0)
  * **:weekdayname** the name of the day of the week
  * **:yearday** the 1- to 3-digit day of the year
  * **:section** the content's section
  * **:title** the content's title
  * **:slug** the content's slug (or title if no slug)
  * **:filename** the content's filename (without extension)

<a name="extras.shortcodes.md"></a>

# Shortcodes


Hugo uses Markdown for its simple content format. However, there’s a lot
of things that Markdown doesn’t support well.

We are unwilling to accept being constrained by our simple format. Also
unacceptable is writing raw HTML in our Markdown every time we want to include
unsupported content such as a video. To do so is in complete opposition to the
intent of using a bare bones format for our content and utilizing templates to
apply styling for display.

To avoid both of these limitations, Hugo created shortcodes.

A shortcode is a simple snippet inside a content file that Hugo will render
using a predefined template. Note that shortcodes will not work in template
files---if you need a functionality like that in a template, you most likely
want a [partial template](#templates.partials.md) instead.

## Using a shortcode

In your content files, a shortcode can be called by using '`{{%/* name parameters
*/%}}`' respectively. Shortcodes are space delimited (parameters with spaces
can be quoted).

The first word is always the name of the shortcode. Parameters follow the name.
The format for named parameters models that of HTML with the format
`name="value"`.

Some shortcodes use or require closing shortcodes. Like HTML, the opening and closing
shortcodes match (name only), the closing being prepended with a slash.

Example of a paired shortcode:

    {{</* highlight go */>}} A bunch of code here {{</* /highlight */>}}

The examples above use two different delimiters, the difference being the `%` and the `<` character:

### Shortcodes with Markdown

The `%` characters indicates that the shortcode's inner content needs further processing by the page's rendering processor (i.e. Markdown), needed to get the **bold** text in the example below:

 ```
{{%/* myshortcode */%}}Hello **World!**{{%/* /myshortcode */%}}
```

### Shortcodes without Markdown

The `<` character indicates that the shortcode's inner content doesn't need any further rendering, this will typically be pure HTML:

 ```
{{</* myshortcode */>}}<p>Hello <strong>World!</strong></p>{{</* /myshortcode */>}}
```

## Hugo Shortcodes

Hugo ships with a set of predefined shortcodes.

### highlight

This shortcode will convert the source code provided into syntax highlighted
HTML. Read more on [highlighting](#extras.highlighting.md).

#### Usage
`highlight` takes exactly one required parameter of _language_ and requires a
closing shortcode.

#### Example

    {{</* highlight html */>}}
    <section id="main">
      <div>
       <h1 id="title">{{ .Title }}</h1>
        {{ range .Data.Pages }}
            {{ .Render "summary"}}
        {{ end }}
      </div>
    </section>
    {{</* /highlight */>}}


#### Example Output

    <span style="color: #f92672">&lt;section</span> <span style="color: #a6e22e">id=</span><span style="color: #e6db74">&quot;main&quot;</span><span style="color: #f92672">&gt;</span>
      <span style="color: #f92672">&lt;div&gt;</span>
       <span style="color: #f92672">&lt;h1</span> <span style="color: #a6e22e">id=</span><span style="color: #e6db74">&quot;title&quot;</span><span style="color: #f92672">&gt;</span>{{ .Title }}<span style="color: #f92672">&lt;/h1&gt;</span>
        {{ range .Data.Pages }}
            {{ .Render &quot;summary&quot;}}
        {{ end }}
      <span style="color: #f92672">&lt;/div&gt;</span>
    <span style="color: #f92672">&lt;/section&gt;</span>

### figure
`figure` is simply an extension of the image capabilities present with Markdown.
`figure` provides the ability to add captions, CSS classes, alt text, links etc.

#### Usage

`figure` can use the following parameters:

 * src
 * link
 * title
 * caption
 * attr (attribution)
 * attrlink
 * alt

#### Example

    {{</* figure src="/media/spf13.jpg" title="Steve Francia" */>}}

#### Example output

    <figure>
        <img src="/media/spf13.jpg"  />
        <figcaption>
            <h4>Steve Francia</h4>
        </figcaption>
    </figure>

### ref, relref

These shortcodes will look up the pages by their relative path (e.g.,
`blog/post.md`) or their logical name (`post.md`) and return the permalink
(`ref`) or relative permalink (`relref`) for the found page.

`ref` and `relref` also make it possible to make fragmentary links that work
for the header links generated by Hugo.

Read more on [cross-references]({{% ref "extras/crossreferences.md" %}}).

#### Usage

`ref` and `relref` take exactly one required parameter of _reference_.

#### Example

    [Neat]({{</* ref "blog/neat.md" */>}})
    [Who]({{</* relref "about.md#who" */>}})

#### Example Output

Assuming that standard Hugo pretty URLs are turned on.

    <a href="/blog/neat">Neat</a>
    <a href="/about/#who:c28654c202e73453784cfd2c5ab356c0">Who</a>

## Creating your own shortcodes

To create a shortcode, place a template in the layouts/shortcodes directory. The
template name will be the name of the shortcode.

In creating a shortcode, you can choose if the shortcode will use _positional
parameters_ or _named parameters_ (but not both). A good rule of thumb is that if a
shortcode has a single required value in the case of the `youtube` example below,
then positional works very well. For more complex layouts with optional
parameters, named parameters work best.

**Inside the template**

To access a parameter by position, the `.Get` method can be used:

    {{ .Get 0 }}

To access a parameter by name, the `.Get` method should be utilized:

    {{ .Get "class" }}

`with` is great when the output depends on a parameter being set:

    {{ with .Get "class"}} class="{{.}}"{{ end }}

`.Get` can also be used to check if a parameter has been provided. This is
most helpful when the condition depends on either one value or another...
or both:

    {{ or .Get "title" | .Get "alt" | if }} alt="{{ with .Get "alt"}}{{.}}{{else}}{{.Get "title"}}{{end}}"{{ end }}

If a closing shortcode is used, the variable `.Inner` will be populated with all
of the content between the opening and closing shortcodes. If a closing
shortcode is required, you can check the length of `.Inner` and provide a warning
to the user.

The variable `.Params` contains the list of parameters in case you need to do more complicated things than `.Get`.

You can also use the variable `.Page` to access all the normal [Page Variables](#templates.variables.md).

## Single Positional Example: youtube

    {{</* youtube 09jf3ow9jfw */>}}

Would load the template /layouts/shortcodes/youtube.html

    <div class="embed video-player">
    <iframe class="youtube-player" type="text/html" width="640" height="385" src="http://www.youtube.com/embed/{{ index .Params 0 }}" allowfullscreen frameborder="0">
    </iframe>
    </div>

This would be rendered as:

    <div class="embed video-player">
    <iframe class="youtube-player" type="text/html"
        width="640" height="385"
        src="http://www.youtube.com/embed/09jf3ow9jfw"
        allowfullscreen frameborder="0">
    </iframe>
    </div>

## Single Named Example: image with caption

    {{</* img src="/media/spf13.jpg" title="Steve Francia" */>}}

Would load the template /layouts/shortcodes/img.html

    <!-- image -->
    <figure {{ with .Get "class" }}class="{{.}}"{{ end }}>
        {{ with .Get "link"}}<a href="{{.}}">{{ end }}
            <img src="{{ .Get "src" }}" {{ if or (.Get "alt") (.Get "caption") }}alt="{{ with .Get "alt"}}{{.}}{{else}}{{ .Get "caption" }}{{ end }}"{{ end }} />
        {{ if .Get "link"}}</a>{{ end }}
        {{ if or (or (.Get "title") (.Get "caption")) (.Get "attr")}}
        <figcaption>{{ if isset .Params "title" }}
            <h4>{{ .Get "title" }}</h4>{{ end }}
            {{ if or (.Get "caption") (.Get "attr")}}<p>
            {{ .Get "caption" }}
            {{ with .Get "attrlink"}}<a href="{{.}}"> {{ end }}
                {{ .Get "attr" }}
            {{ if .Get "attrlink"}}</a> {{ end }}
            </p> {{ end }}
        </figcaption>
        {{ end }}
    </figure>
    <!-- image -->

Would be rendered as:

    <figure >
        <img src="/media/spf13.jpg"  />
        <figcaption>
            <h4>Steve Francia</h4>
        </figcaption>
    </figure>

## Paired Example: Highlight
*Hugo already ships with the `highlight` shortcode*

    {{</* highlight html */>}}
    <html>
        <body> This HTML </body>
    </html>
    {{</* /highlight */>}}

The template for this utilizes the following code (already include in Hugo)

    {{ .Get 0 | highlight .Inner  }}

And will be rendered as:

    <div class="highlight" style="background: #272822"><pre style="line-height: 125%"><span style="color: #f92672">&lt;html&gt;</span>
        <span style="color: #f92672">&lt;body&gt;</span> This HTML <span style="color: #f92672">&lt;/body&gt;</span>
    <span style="color: #f92672">&lt;/html&gt;</span>
    </pre></div>

Please notice that this template makes use of a Hugo-specific template function
called `highlight` which uses Pygments to add the highlighting code.

More shortcode examples can be found at [spf13.com](https://github.com/spf13/spf13.com/tree/master/layouts/shortcodes).
<a name="extras.highlighting.md"></a>

# Syntax Highlighting


Hugo provides the ability for you to highlight source code in two different
ways &mdash; either pre-processed server side from your content, or to defer
the processing to the client side, using a JavaScript library. The advantage of
server side is that it doesn’t depend on a JavaScript library and consequently
works very well when read from an RSS feed. The advantage of client side is that
it doesn’t cost anything when building your site and some of the highlighting
scripts available cover more languages than Pygments does.

For the pre-processed approach, Highlighting is performed by an external
Python-based program called [Pygments](http://pygments.org) and is triggered
via an embedded shortcode. If Pygments is absent from the path, it will
silently simply pass the content along unhighlighted.

## Server-side

### Disclaimers

 * **Warning:** Pygments is relatively slow. Expect much longer build times when using server-side highlighting.
 * Languages available depends on your Pygments installation.
 * Styles are inline in order to be supported in syndicated content when references
to style sheets are not carried over.
 * We have sought to have the simplest interface possible, which consequently
limits configuration. An ambitious user is encouraged to extend the current
functionality to offer more customization.
* You can change appearance with config options `pygmentsstyle`(default
`"monokai"`) and `pygmentsuseclasses`(defaut `false`).

### Usage
Highlight takes exactly one required parameter of language and requires a
closing shortcode.

### Example
Since this example is a code block, we use Github flavored Markdown's code fences, ```, to delimit the code. If you are using standard Markdown, instead of the code fence delimiters, each line must be preceeded by 4 spaces to identify each line as a line of code. Not doing either will result in the text being rendered as HTML. This will prevent Pygment highlighting from working.

```  
{{%/* highlight html */%}}
<section id="main">
  <div>
    <h1 id="title">{{ .Title }}</h1>
    {{ range .Data.Pages }}
        {{ .Render "summary"}}
    {{ end }}
  </div>
</section>
{{%/* /highlight */%}}
```

### Example Output

    <span style="color: #f92672">&lt;section</span> <span style="color: #a6e22e">id=</span><span style="color: #e6db74">&quot;main&quot;</span><span style="color: #f92672">&gt;</span>
      <span style="color: #f92672">&lt;div&gt;</span>
       <span style="color: #f92672">&lt;h1</span> <span style="color: #a6e22e">id=</span><span style="color: #e6db74">&quot;title&quot;</span><span style="color: #f92672">&gt;</span>{{ .Title }}<span style="color: #f92672">&lt;/h1&gt;</span>
        {{ range .Data.Pages }}
            {{ .Render &quot;summary&quot;}}
        {{ end }}
      <span style="color: #f92672">&lt;/div&gt;</span>
    <span style="color: #f92672">&lt;/section&gt;</span>

## Client-side

Alternatively, code highlighting can be done in client-side JavaScript.

Client-side syntax highlighting is very simple to add. You'll need to pick
a library and a corresponding theme. Some popular libraries are:

- [Highlight.js]
- [Rainbow]
- [Syntax Highlighter]
- [Google Prettify]

This example uses the popular [Highlight.js] library, hosted by [Yandex], a
popular Russian search engine.

In your `./layouts/partials/` (or `./layouts/chrome/`) folder, depending on your specific theme, there
will be a snippet that will be included in every generated HTML page, such
as `header.html` or `header.includes.html`. Simply add:

    <link rel="stylesheet" href="https://yandex.st/highlightjs/8.0/styles/default.min.css">
    <script src="https://yandex.st/highlightjs/8.0/highlight.min.js"></script>
    <script>hljs.initHighlightingOnLoad();</script>

You can of course use your own copy of these files, typically in `./static/`.

[Highlight.js]: http://highlightjs.org/
[Rainbow]: http://craig.is/making/rainbows
[Syntax Highlighter]: http://alexgorbatchev.com/SyntaxHighlighter/
[Google Prettify]: https://code.google.com/p/google-code-prettify/
[Yandex]: http://yandex.ru/

Please see individual libraries documentation for how to implement the JavaScript-based libraries.
<a name="extras.toc.md"></a>

# Table of Contents


Hugo will automatically parse the Markdown for your content and create
a Table of Contents you can use to guide readers to the sections within
your content.

## Usage

Simply create content like you normally would with the appropriate
headers.

Hugo will take this Markdown and create a table of contents stored in the
[content variable](#layout.variables.md) `.TableOfContents`


## Template Example

This is example code of a [single.html template](#layout.content.md).

    {{ partial "header.html" . }}
        <div id="toc" class="well col-md-4 col-sm-6">
        {{ .TableOfContents }}
        </div>
        <h1>{{ .Title }}</h1>
        {{ .Content }}
    {{ partial "footer.html" . }}


<a name="extras.urls.md"></a>

# URLs


## Pretty URLs

By default, Hugo create content with 'pretty' URLs. For example,
content created at `/content/extras/urls.md` will be rendered at
`/public/extras/urls/index.html`, thus accessible from the browser
at http://example.com/extras/urls/.  No non-standard server-side
configuration is required for these pretty URLs to work.

If you would like to have what we call "ugly URLs",
e.g.&nbsp;http://example.com/extras/urls.html, you are in luck.
Hugo supports the ability to create your entire site with ugly URLs.
Simply add `uglyurls = true` to your site-wide `config.toml`,
or use the `--uglyUrls=true` flag on the command line.

If you want a specific piece of content to have an exact URL, you can
specify this in the front matter under the `url` key. See [Content
Organization](#content.organization.md) for more details.

## Canonicalization

<!--
By default, all relative URLs encountered in the input will be canonicalized
using `baseurl`, so that a link `/css/foo.css` becomes
`http://yoursite.example.com/css/foo.css`.

By setting `canonifyurls` to `false` will prevent this canonicalization.
-->
By default, all relative URLs encountered in the input are left unmodified,
e.g. `/css/foo.css` would stay as `/css/foo.css`.

By setting `canonifyurls` to `true`, all relative URLs would instead
be *canonicalized* using `baseurl`.  For example, assuming you have
`baseurl = http://yoursite.example.com/` defined in the site-wide
config.toml, the relative URL `/css/foo.css` would be turned into
the absolute URL `http://yoursite.example.com/css/foo.css`.

Benefits of canonicalization include fixing all URLs to be absolute, which may
aid with some parsing tasks.  Note though that all real browsers handle this
client-side without issues.

Benefits of non-canonicalization include being able to have resource inclusion
be scheme-relative, so that http vs https can be decided based on how this
page was retrieved.

### Caveat: Default of `canonifyurls` changed in v0.11

<table class="table table-bordered">
<thead>
<tr>
<th>Hugo Version</th>
<th>Release Date</th>
<th>Default</th>
</tr>
</thead>

<tbody>
<tr>
<td>v0.9</td>
<td>2013-11-15</td>
<td><code>canonifyurls = true</code> <small>(non-configurable)</small></td>
</tr>

<tr>
<td>v0.10</td>
<td>2014-03-01</td>
<td><code>canonifyurls = true</code></td>
</tr>

<tr>
<td>v0.11</td>
<td>2014-05-29</td>
<td><code>canonifyurls = false</code></td>
</tr>

<tr>
<td>v0.12</td>
<td>2014-09-01</td>
<td><code>canonifyurls = false</code></td>
</tr>

<tr>
<td>v0.13-DEV</td>
<td><small>in development</small></td>
<td><code>canonifyurls = false</code> <small>(as of January 2015)</small></td>
</tr>
</tbody>
</table>
