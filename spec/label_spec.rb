label_spec.rb require_relative '../label'

describe Label do
  describe '#initialize' do
    it 'sets the title attribute' do
      label = Label.new('Vintage', 'green')
      expect(label.title).to eq('Vintage')
    end

    it 'sets the color attribute' do
      label = Label.new('Vintage', 'green')
      expect(label.color).to eq('green')
    end
  end
end