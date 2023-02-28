require './item'

class Movie < Item
  attr_accessor :silent

  def initialize(silent, genere, source, label, publish_date)
    super(genere, source, label, publish_date)
    @silent = silent
  end

  private

  def can_be_archieved?
    super || @silent
  end
end
