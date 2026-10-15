# RottenPotatoes

A Rails app for cataloging movies (CSCE 606, PA 2: Hello Rails).

**Deployed app:** https://rottenpotatoes-cufomba-349d2ff7303c.herokuapp.com

## Features

- Create, view, edit, and delete movies
- Movies listed in a table (`<thead>`, `<tbody>`, `<tfoot>`) with title, rating, and release date
- Click a column header to sort ascending; click again to sort descending
- Sort choice is remembered in the session when you leave the index and come back
- Sorted column is highlighted (amber = ascending, blue = descending) and marked with ▲/▼ plus `aria-sort` for screen readers
- Hand-written CSS only, no CSS libraries
- Seed data can be re-run without creating duplicates (`db/seeds.rb` matches movies by title)

Sorting is done in the model (`Movie.sorted_by`), so the database handles it with `ORDER BY`.

## Running locally

```sh
bundle install
bin/rails db:migrate db:seed
bin/rails server
```

Then visit http://localhost:3000.
