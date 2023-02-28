class Source
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def add_item(item)
    @items ||= []
    @items << item
    item.source = self
  end
end
