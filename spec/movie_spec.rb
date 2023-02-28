require './music'
describe Movie do
  it 'should return true of parent OR silent is true when we call the can_be_archieved?' do
    movie = Movie.new(true, 'genere', 'source', 'label', 'publish_date')
    expect(movie.can_be_archieved?).to be_truthy
  end
end
