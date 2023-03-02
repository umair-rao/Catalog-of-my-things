require_relative './item'
class Book < Item
  attr_accessor :publisher, :cover_state
  attr_reader :title

  def initialize(publisher, cover_state, publish_date)
    super(publish_date)
    @publisher = publisher
    @cover_state = cover_state
    @title = ''
  end

  def can_be_archived?
    super() || (@cover_state == 'bad' && @publish_date <= Date.today - (10 * 365))
  end

  def to_json(*_args)
    {
      class: self.class,
      title: @title,
      author: author,
      publisher: @publisher,
      cover_state: @cover_state,
      publish_date: @publish_date,
      label: label
    }.to_json
  end
end
