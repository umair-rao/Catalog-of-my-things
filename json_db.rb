require 'json'
require './book'
require './music_album'
require './movie'
require './game'

def save_books(items)
  JSON.dump(items, File.open('./storage/books.json', 'w'))
end

def save_movies(items)
  JSON.dump(items, File.open('./storage/movies.json', 'w'))
end

def save_music_albums(items)
  JSON.dump(items, File.open('./storage/music_albums.json', 'w'))
end

def save_games(items)
  JSON.dump(items, File.open('./storage/games.json', 'w'))
end

def load_books(items)
  json_string = JSON.parse(File.read('./storage/books.json'))
  json_string.each do |item|
    book = Book.new(item['publisher'], item['cover_state'], item['publish_date'])
    book.label = item['label']
    book.author = item['author']
    book.source = item['source']
    book.genre = item['genre']
    items << book
  end
rescue StandardError
  puts 'no books were saved'
end

def load_movies(items)
  json_string = JSON.parse(File.read('./storage/movies.json'))
  json_string.each do |item|
    movie = Movie.new(item['silent'], item['publish_date'])
    movie.author = item['author']
    movie.label = item['label']
    movie.source = item['source']
    movie.genre = item['genre']
    items << movie
  end
rescue StandardError
  puts 'no movies were saved'
end

def load_music_albums(items)
  json_string = JSON.parse(File.read('./storage/music_albums.json'))
  json_string.each do |item|
    music_album = MusicAlbum.new(item['on_spotify'], item['publish_date'])
    music_album.author = item['author']
    music_album.label = item['label']
    music_album.source = item['source']
    music_album.genre = item['genre']
    items << music_album
  end
rescue StandardError
  puts 'no music were saved'
end

def load_games(items)
  json_string = JSON.parse(File.read('./storage/games.json'))
  json_string.each do |item|
    game = Game.new(item['multiplayer'], item['last_played_at'], item['publish_date'])
    game.author = item['author']
    game.label = item['label']
    game.source = item['source']
    game.genre = item['genre']
    items << game
  end
rescue StandardError
  puts 'no games were saved'
end

def save_state(app)
  book = []
  movie = []
  music_album = []
  game = []
  app.items.each do |item|
    book << item if item.class.to_s == 'Book'
    movie << item if item.class.to_s == 'Movie'
    music_album << item if item.class.to_s == 'MusicAlbum'
    game << item if item.class.to_s == 'Game'
  end
  save_books(book)
  save_games(game)
  save_movies(movie)
  save_music_albums(music_album)
end

def load_state(app)
  load_books(app.items)
  load_movies(app.items)
  load_music_albums(app.items)
  load_games(app.items)
end
