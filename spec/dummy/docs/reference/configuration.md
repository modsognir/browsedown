# Configuration

Browsedown is configured entirely through the mount call in your routes file.

## Mount options

| Option | Description | Default |
|--------|------------|---------|
| Path argument | Directory to serve, relative to `Rails.root` | *required* |
| Mount point | URL path where docs are served | *required* |

## Examples

Serve `docs/` at `/docs`:

```ruby
mount Browsedown["docs"] => "/docs"
```

Serve `content/help` at `/help`:

```ruby
mount Browsedown["content/help"] => "/help"
```

Multiple documentation roots:

```ruby
mount Browsedown["docs/api"] => "/api-docs"
mount Browsedown["docs/guides"] => "/guides"
```

## Markdown support

Browsedown uses [Redcarpet](https://github.com/vmg/redcarpet) with the following extensions enabled:

- **Fenced code blocks** — triple-backtick syntax with language hints
- **Tables** — pipe-delimited tables
- **Autolinks** — bare URLs become clickable
- **Strikethrough** — `~~text~~` renders as ~~struck through~~
