---
title: Publications
cms_exclude: true

# The `publication` view deliberately doesn't link its cards to detail pages
# (see layouts/_partials/views/publication.html), and the entries carry their
# own DOI/PDF links, so those pages were only ever reachable by URL. Same
# treatment as content/projects: don't render them, but keep them listable so
# the homepage collection block can query them.
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
