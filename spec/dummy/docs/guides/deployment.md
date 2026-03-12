# Deployment

Browsedown serves static markdown files, so there are no extra deployment concerns beyond your normal Rails setup.

## Asset considerations

All styles are inlined via a `<style>` tag — no asset pipeline integration needed. Fonts are loaded from Google Fonts.

## Performance

Pages are read from disk on each request. For high-traffic documentation sites, consider placing a cache layer in front (e.g. `Rack::Cache` or a CDN).

## Heroku

No special configuration needed. Your markdown files are part of your repository and deploy with your code.

```bash
git add docs/
git commit -m "Add documentation"
git push heroku main
```
