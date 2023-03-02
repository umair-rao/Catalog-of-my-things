require './item'
require 'date'

class MusicAlbum < Item
  attr_accessor :on_spotify

  def initialize(on_spotify, publish_date)
    super(Date.parse(publish_date))
    @on_spotify = on_spotify
  end

  # private

  def can_be_archived?
    super && @on_spotify == true
  end

  def to_json(*_args)
    {
      class: self.class,
      author: author,
      label: label,
      source: source,
      genre: genre,
      on_spotify: @on_spotify,
      publish_date: @publish_date
    }.to_json
  end
end
