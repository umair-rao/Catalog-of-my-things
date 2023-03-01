require 'json'
require './book'
require './music_album'
require './movie'
def save_items(items)
  JSON.dump(items, File.open('./storage/items.json', 'w'))
end
def load_items(items)
  json_string = JSON.parse(File.read('./storage/items.json'))
  json_string.each do |item|
  case item['class']
  when 'Book'
    book = Book.new(item['publisher'], item['cover_state'], item['publish_date'])
    book.label = item['label']
    items << book
  when 'MusicAlbum'
    movie = Movie.new(item['silent'], item['publish_date'])
    movie.author = item['author']
    movie.label = item['label']
    movie.source = item['source']
    movie.genre = item['genre']
    items << movie
  when 'Movie'
    music_album = MusicAlbum.new(item['on_spotify'], item['publish_date'])
      music_album.author = item['author']
      music_album.label = item['label']
      music_album.source = item['source']
      music_album.genre = item['genre']
      items << music_album
  end
end
end
def save_state(app)
  save_items(app.items)
end
def load_state(app)
  load_items(app.items)
end
