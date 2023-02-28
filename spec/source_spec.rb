source_spec.rb .require_relative '../source'
require_relative '../book'

describe Source do
  describe '#initialize' do
    it 'sets the name attribute' do
      source = Source.new('Library')
      expect(source.name).to eq('Library')
    end
  end

  describe '#add_item' do
    it 'adds an item to the source' do
      source = Source.new('Library')
      book = Book.new(Date.today - 1.year, 'Penguin', 'good')
      source.add_item(book)
      expect(source.items).to include(book)
    end
  end
end
