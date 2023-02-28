require './game'
describe Game do
  it 'should return true of parent AND last_played_at is less than 2 years when we call the can_be_archieved?' do
    music_album = MusicAlbum.new(true, 'genere', 'source', 'label', 'publish_date')
    expect(music_album.can_be_archieved?).to be_truthy
  end
end
