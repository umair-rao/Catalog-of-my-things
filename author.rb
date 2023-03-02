class Author
  attr_accessor :first_name

  def initialize(first_name)
    @first_name = first_name
  end

  def add_item(item)
    @items.push(item)
    item.author = self
  end
end
