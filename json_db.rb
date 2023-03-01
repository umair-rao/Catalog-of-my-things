require 'json'

def save_items(_item)
  JSON.dump(items, File.open('./storage/items.json', 'a'))
end

def load_items(items)
  json_string = JSON.parse(File.read('./storage/items.json'))
  json_string.each do |_item|
    items << Items.new(items['publish_date'])
  end
rescue StandardError
  print 'no items were saved'
end

def save_state(app)
  save_items(app.items)
end

def load_state(app)
  load_items(app.items)
end
