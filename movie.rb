require './item'
require 'date'

class Movie < Item
  attr_accessor :silent

  def initialize(silent, publish_date)
    super(Date.parse(publish_date))
    @silent = silent
  end

  # private

  def can_be_archived?
    super || @silent
  end

  def to_json(*_args)
    {
      class: self.class,
      title: title,
      author: author,
      label: label,
      source: source,
      genre: genre,
      silent: @silent,
      publish_date: @publish_date
    }.to_json
  end
end
