require_relative '../item'
require 'date'
describe Item do
  describe '#can_be_archived?' do
    it 'returns true if the item was published more than 10 years ago' do
      item = Item.new(Date.today << 120)
      expect(item.can_be_archived?).to eq(true)
    end
    it 'returns false if the item was published less than 10 years ago' do
      item = Item.new(Date.today << 60)
      expect(item.can_be_archived?).to eq(false)
    end
  end
  describe '#move_to_archive' do
    it 'archives the item if it can be archived' do
      item = Item.new(Date.today << 120)
      item.move_to_archive
      expect(item.archived).to eq(true)
    end
    it 'does not archive the item if it cannot be archived' do
      item = Item.new(Date.today << 60)
      item.move_to_archive
      expect(item.archived).to eq(false)
    end
  end
end
