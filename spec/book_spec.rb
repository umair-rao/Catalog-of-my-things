require_relative '../book'
RSpec.describe Book do
  describe '#can_be_archived?' do
    it 'returns true when cover state is bad and publish date is over 10 years ago' do
      publish_date = Date.today - (11 * 365)
      book = Book.new('Publisher', 'bad', publish_date)
      expect(book.can_be_archived?).to eq(true)
    end
    it 'returns false when cover state is good and publish date is over 10 years ago' do
      publish_date = Date.today - (11 * 365)
      book = Book.new('Publisher', 'good', publish_date)
      expect(book.can_be_archived?).to eq(false)
    end
    it 'returns false when publish date is less than 10 years ago' do
      publish_date = Date.today - (9 * 365)
      book = Book.new('Publisher', 'bad', publish_date)
      expect(book.can_be_archived?).to eq(false)
    end
  end
end
