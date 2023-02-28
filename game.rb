require './item'
require 'date'

class Game < Item
  attr_accessor :multiplayer, :last_played_at

  def initialize(multiplayer, last_played_at, publish_date)
    super(Date.parse(publish_date))
    @multiplayer = multiplayer
    @last_played_at = last_played_at
  end

  # private

  def can_be_archived?
    super && Date.parse(@last_played_at).year < Date.today.year - 2
  end
end
