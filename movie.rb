require './item.rb'

class Movie < Item
    attr_accessor :silent
    def initialize(silent,genere, author,source,label,publish_date)
    super(genere,author,source,lable,publish_date)
        @silent = silent
    end
    
    private
    def can_be_archieved?
       super || silent
    end 
end