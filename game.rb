require './item'
require 'date'

class Game < Item
  attr_accessor :multiplayer, :last_played_at

  def initialize(multiplayer, last_played_at, genere, label, publish_date)
    super(genere, label, publish_date)
    @multiplayer = multiplayer
    @last_played_at = last_played_at  

  end

  private

  def can_be_archieved?
    time = Time.new
    super AND Date.parse(@last_played_at).year < Date.today.year

  end
end

g = Game.new(true, '2010/ 9 /10', 'sad', 'sdasd', 'SDASD')
print g.last_played_at
