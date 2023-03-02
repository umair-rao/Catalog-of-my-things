require 'date'
class Item
  attr_accessor :genre, :author, :source, :label, :publish_date, :archived

  def initialize(publish_date, archived: false)
    @id = Random.rand(1..10_000)
    @publish_date = publish_date
    @archived = archived
  end

  def add_genre(genre)
    @genre = genre
    genre.items.push(self) unless genre.items.include?(self)
  end

  def add_label(label)
    @label = label.title
    label.items << to_json unless label.items.include?(to_json)
  end

  def add_author(author)
    @author = author
    author.items << self
  end

  def add_source(source)
    @source = source
    source.items << self
  end

  def can_be_archived?
    @publish_date < (Date.today - (10 * 365))
  end

  def move_to_archive
    return unless can_be_archived?

    @archived = true
  end
end
