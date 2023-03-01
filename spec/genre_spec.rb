require_relative '../genre'
describe Genre do
  describe '#initialize' do
    it 'sets the name attribute' do
      genre = Genre.new('Horror')
      expect(genre.name).to eq('Horror')
    end
  end
end
