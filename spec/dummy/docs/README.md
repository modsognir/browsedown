# Welcome

This is the documentation homepage.

Browsedown turns a folder of markdown files into a browsable documentation site inside your Rails app. Mount it in your routes, point it at a directory, and you're done.

## Quick start

```ruby
gem "browsedown"
```

```ruby
mount Browsedown["docs"] => "/documentation"
```

## Features

- Renders markdown with fenced code blocks, tables, autolinks, and strikethrough
- Sidebar navigation with directory grouping
- Dark and light mode support
- Path traversal protection

> Browsedown is designed to stay out of your way. No databases, no configuration files, no build step.
