require './music_album'
describe MusicAlbum do
  it 'should return true of parent AND on_spotify is true when we call the can_be_archieved?' do
    music_album = MusicAlbum.new(true, '2022/10/12', 'genere', 'label', 'publish_date')
    expect(music_album.can_be_archieved?).to be_truthy
  end
end
