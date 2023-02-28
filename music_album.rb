require './item'

class MusicAlbum < Item
  attr_accessor :on_spotify

  def initialize(on_spotify, genere, source, label, publish_date)
    super(genere, source, label, publish_date)
    @on_spotify = on_spotify
  end

  private

  def can_be_archieved?
    super AND @on_spotify
  end
end
