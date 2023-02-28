require './movie'
describe Movie do
  it 'should return true of parent OR silent is true when we call the can_be_archived?' do
    movie = Movie.new(true, '2022/12/20')
    expect(movie.can_be_archived?).to be_truthy
  end
end
