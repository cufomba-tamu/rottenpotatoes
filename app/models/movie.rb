class Movie < ActiveRecord::Base
  RATINGS = %w[G PG PG-13 R NC-17].freeze
  SORTABLE_COLUMNS = %w[title rating release_date].freeze
  SORT_DIRECTIONS = %w[asc desc].freeze

  validates :title, presence: true

  # Let the database do the sorting. Only whitelisted columns and directions
  # reach the ORDER BY clause; ties fall back to title so the order is stable.
  scope :sorted_by, ->(column, direction) {
    column = "title" unless SORTABLE_COLUMNS.include?(column)
    direction = "asc" unless SORT_DIRECTIONS.include?(direction)
    order(column => direction, title: :asc)
  }
end
