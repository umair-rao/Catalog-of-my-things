require './music_album'
describe MusicAlbum do
  it 'should return true of parent AND on_spotify is true when we call the can_be_archived?' do
    music_album = MusicAlbum.new(true, '2010/10/12')
    expect(music_album.can_be_archived?).to be_truthy
  end
end
