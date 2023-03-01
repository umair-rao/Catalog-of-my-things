class Library
  attr_accessor :items

  def initialize
    @items = []
  end

  def add_item(item)
    @items << item
  end

  def list_all_items(type)
    puts "Listing all #{type}:"
    @items.each do |item|
      puts "- #{item.title}" if item.class.to_s == type
    end
  end

  def list_all_genres
    puts 'Listing all genres:'
    genres = []
    @items.each do |item|
      genres << item.genre unless genres.include?(item.genre)
    end
    genres.each { |genre| puts "- #{genre}" }
  end

  def list_all_labels
    puts 'Listing all labels:'
    labels = []
    @items.each do |item|
      labels << item.label unless labels.include?(item.label)
    end
    labels.each { |label| puts "- #{label}" }
  end

  def list_all_authors
    puts 'Listing all authors:'
    authors = []
    @items.each do |item|
      authors << item.author unless authors.include?(item.author)
    end
    authors.each { |author| puts "- #{author}" }
  end

  def list_all_sources
    puts 'Listing all sources:'
    sources = []
    @items.each do |item|
      sources << item.source unless sources.include?(item.source)
    end
    sources.each { |source| puts "- #{source}" }
  end
end
