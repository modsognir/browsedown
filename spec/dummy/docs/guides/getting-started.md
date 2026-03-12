# Getting Started

Follow these steps to get up and running.

## Installation

Add the gem to your Gemfile.

```ruby
gem "browsedown"
```

Then run:

```bash
bundle install
```

## Configuration

Mount the engine in your routes.

```ruby
mount Browsedown::Engine["docs"] => "/docs"
```

The path argument is relative to `Rails.root`. So `Browsedown["content/guides"]` serves files from `Rails.root/content/guides`.

## Directory structure

Browsedown serves any `*.md` file it finds in the configured directory. Subdirectories become sections in the sidebar.

```
docs/
  README.md          # landing page
  guides/
    getting-started.md
    deployment.md
  reference/
    configuration.md
    api.md
```

Files are sorted alphabetically. `README.md` at the root is used as the index page.
