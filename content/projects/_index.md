---
title: 'Projects'

# The project entries are shown in full on the homepage `portfolio` block and
# nowhere else, so no pages are rendered for this section: neither this archive
# page nor the individual entries. `list: always` keeps them in `site.Pages` so
# the homepage block can still query them.
build:
  render: never
  list: always
cascade:
  build:
    render: never
    list: always
    # Publish a page resource only when something references its URL. The cards
    # use the resized rendition, so the full-size originals stay out of public/.
    publishResources: false
---
