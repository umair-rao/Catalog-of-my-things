class Item
  attr_reader :archived
  attr_accessor :published_date, :title, :author, :label, :source, :genre

  def initialize(published_date)
    @published_date = published_date
    @archived = false
  end

  def can_be_archived?
    Date.today.year - @published_date.year > 10
  end

  def move_to_archive
    @archived = true if can_be_archived?
  end
end
