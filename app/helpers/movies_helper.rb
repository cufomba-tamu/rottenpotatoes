module MoviesHelper
  # Table header cell for a sortable column. The column the table is sorted by
  # gets a direction class (for color), an aria-sort attribute, and an arrow
  # plus hidden text so the cue doesn't depend on color alone.
  def sortable_header(column, label)
    active = column == @sort_column
    ascending = @sort_direction == "asc"
    next_direction = active && ascending ? "desc" : "asc"

    link = link_to(movies_path(sort: column, direction: next_direction), class: "sort-link") do
      if active
        safe_join([
          label,
          tag.span(ascending ? "▲" : "▼", class: "sort-arrow", aria: { hidden: true }),
          tag.span(ascending ? "(sorted ascending)" : "(sorted descending)", class: "visually-hidden")
        ], " ")
      else
        label
      end
    end

    tag.th(link,
      id: "#{column}_header",
      class: (active ? "sorted sorted-#{@sort_direction}" : nil),
      scope: "col",
      aria: { sort: (active ? (ascending ? "ascending" : "descending") : nil) })
  end

  def sorted_cell_class(column)
    "sorted sorted-#{@sort_direction}" if column == @sort_column
  end

  def format_release_date(movie)
    movie.release_date&.strftime("%b %-d, %Y")
  end
end
