require_relative './item'
require_relative './item'
class Book < Item
  attr_accessor :publisher, :cover_state, :publish_date, :author, :title
  attr_accessor :publisher, :cover_state, :publish_date, :author, :title

  def initialize(publisher, cover_state, publish_date, author, title)
  def initialize(publisher, cover_state, publish_date, author, title)
    super(publish_date)
    @author = author
    @title = title
    @author = author
    @title = title
    @publisher = publisher
    @cover_state = cover_state
  end

  def can_be_archived?
    super() && @cover_state == 'bad' && @publish_date <= Date.today - (10 * 365)
  end

  def to_json(*_args)
    {
      class: self.class,
      publisher: @publisher,
      cover_state: @cover_state,
      publish_date: @publish_date,
      label: label
    }
  end
end
