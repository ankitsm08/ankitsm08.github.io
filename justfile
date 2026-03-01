# Run Dev Server
serve:
  bundle exec jekyll serve --drafts --config _config.dev.yml --livereload

# Compile the site
build:
  python ./_scripts/fetch_pageviews.py

  bundle exec jekyll build --config _config.yml

  # Make the Service Worker self destructive
  just sw-self-destruct

  # node .\_scripts\minify.js

[linux]
sw-self-destruct:
  cp -f _scripts/sw.self_destroyer.js _site/sw.min.js

[windows]
sw-self-destruct:
  Copy-Item -Force _scripts/sw.self_destroyer.js _site/sw.min.js
