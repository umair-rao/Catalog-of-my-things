require './game'
require './music_album'
require './movie'
require './book'
require_relative 'app'
library = Library.new
puts 'Welcome to the Library App!'
puts
puts 'Please choose an option:'
puts '1. List all books'
puts '2. List all music albums'
puts '3. List all movies'
puts '4. List all games'
puts '5. List all genres (e.g Comedy)'
puts '6. List all labels (e.g. Gift, New)'
puts '7. List all authors (e.g. Stephen King)'
puts '8. Add a book'
puts '9. Add a music album'
puts '10. Add a movie'
puts '11. Add a game'
puts '12. Exit'
puts
puts 'Enter your choice:'
choice = gets.chomp.to_i
case choice
when 1
  library.list_all_items('Book')
when 2
  library.list_all_items('MusicAlbum')
when 3
  library.list_all_items('Movie')
when 4
  library.list_all_items('Game')
when 5
  library.list_all_genres
when 6
  library.list_all_labels
when 7
  library.list_all_authors
when 8
  library.list_all_sources
when 9
  puts "Enter the book's title:"
  title = gets.chomp
  puts "Enter the book's author:"
  author = gets.chomp
  puts "Enter the book's label:"
  label = gets.chomp
  puts "Enter the book's source:"
  source = gets.chomp
  puts "Enter the book's genre:"
  genre = gets.chomp
  puts "Enter the book's publisher:"
  publisher = gets.chomp
  puts "Enter the book's publish_date:"
  publish_date = gets.chomp
  puts "Enter the book's cover_state:"
  cover_state = gets.chomp
  book = Book.new(publisher, cover_state, publish_date)
  book.title = title
  book.author = author
  book.label = label
  book.source = source
  book.genre = genre
  library.add_item(book)
  puts "#{book.title} added to the library!"
when 10
  puts "Enter the music album's title:"
  title = gets.chomp
  puts "Enter the music album's artist:"
  artist = gets.chomp
  puts "Enter the music album's label:"
  label = gets.chomp
  puts "Enter the music album's source:"
  source = gets.chomp
  puts "Enter the music album's genre:"
  genre = gets.chomp
  puts "Is the album on spotify?[Y/N]:"
  on_spotify = gets.chomp
  puts "Enter the music album's publish date:"
  publish_date = gets.chomp
  album = MusicAlbum.new(on_spotify, publish_date)
  album.title = title
  album.author = artist
  album.label = label
  album.source = source
  album.genre = genre
  library.add_item(album)
  puts "#{album.title} added to the library!"
when 11
  puts "Enter the movie's title:"
  title = gets.chomp
  puts "Enter the movie's director:"
  director = gets.chomp
  puts "Enter the movie's label:"
  label = gets.chomp
  puts "Enter the movie's source:"
  source = gets.chomp
  puts "Enter the movie's genre:"
  genre = gets.chomp
  puts "Is the movie silent?[Y/N]:"
  silent = gets.chomp
  puts "Enter the movie's publish date:"
  publish_date = gets.chomp
  movie = Movie.new(silent, publish_date)
  movie.title = title
  movie.author = director
  movie.label = label
  movie.source = source
  movie.genre = genre
  library.add_item(movie)
  puts "#{movie.title} added to the library!"
when 12
  puts "Enter the game's title:"
  title = gets.chomp
  puts "Enter the game's publisher:"
  publisher = gets.chomp
  puts "Enter the game's platform:"
  platform = gets.chomp
  puts "Enter the game's source:"
  source = gets.chomp
  puts "Enter the game's genre:"
  genre = gets.chomp
  puts "Is the game multiplayer?[Y/N]:"
  multiplayer = gets.chomp
  puts "Enter the game's last played date:"
  last_played_at = gets.chomp
  puts "Enter the game's publish date:"
  publish_date = gets.chomp
  game = Game.new(multiplayer, last_played_at, publish_date)
  game.title = title
  game.author = publisher
  game.label = platform
  game.source = source
  game.genre = genre
  library.add_item(game)
  puts "#{game.title} added to the library!"
when 13
  puts 'Goodbye!'
else
  puts 'Invalid choice'
end
