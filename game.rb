require './item.rb'
require 'date'

class Game < Item
    attr_accessor :multiplayer, :last_played_at
    def initialize(multiplayer,last_played_at, genere, author,source,label,publish_date)
    super(genere,author,source,lable,publish_date)
        @multiplayer = multiplayer
        @last_played_at = Date.parse(last_played_at)
    end
    
    private
    def can_be_archieved?
       super AND last_played_at
    end 
end

g = Game.new(true, "2010/9/10","sad","sd.ddsd","sdasd","SDASD")
print g.last_played_at