require './item'
require 'date'

class Game < Item
  attr_accessor :multiplayer, :last_played_at

  def initialize(multiplayer, last_played_at, genere, label, publish_date)
    super(genere, label, publish_date)
    @multiplayer = multiplayer
    @last_played_at = last_played_at  

  end

  # private

  def can_be_archieved?
    time = Time.new
    super && Date.parse(@last_played_at).year < Date.today.year - 10

  end
end
