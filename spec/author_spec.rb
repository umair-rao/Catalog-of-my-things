require_relative '../author'
describe Author do
  describe '#initialize' do
    it 'sets the first_name attribute' do
      author = Author.new('Stephen')
      expect(author.first_name).to eq('Stephen')
    end
  end
end
