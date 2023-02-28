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
end
