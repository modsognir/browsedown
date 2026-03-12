# API

Browsedown exposes a small Ruby API for programmatic use.

## Browsedown[]

Shortcut for mounting the engine with a docs root.

```ruby
Browsedown["path/to/docs"]
# equivalent to:
Browsedown::Engine["path/to/docs"]
```

Returns a mountable Rack app.

## Browsedown::Page

Represents a single markdown file.

```ruby
page = Browsedown::Page.new(root: "/app/docs", relative_path: "guides/setup.md")

page.title          # => "Setup" (extracted from first H1)
page.section        # => "Guides" (directory name, nil for root files)
page.relative_path  # => "guides/setup.md"
page.html           # => "<h1>Setup</h1>..."
page.raw            # => "# Setup\n..."
```

## Browsedown::FindPages

Scans a directory for markdown files.

```ruby
pages = Browsedown::FindPages.call(root: "/app/docs")
# => [#<Browsedown::Page ...>, ...]
```

Returns pages sorted alphabetically by path.

## Browsedown::RenderMarkdown

Converts a markdown string to HTML.

```ruby
Browsedown::RenderMarkdown.call("# Hello\n\nWorld")
# => "<h1>Hello</h1>\n\n<p>World</p>\n"
```
