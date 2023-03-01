class Choices
  def display_options()
    puts "\n
           Please choose an action by entering a number"
    puts "
            1. List all books\n
            2. List all music albums\n
            3. List all movies\n
            4. List all games\n
            5. List all genres (e.g Comedy)\n
            6. List all labels (e.g. Gift, New)\n
            7. List all authors (e.g. Stephen King)\n
            8. Add a book\n
            9. Add a music album\n
            10. Add a movie\n
            11. Add a game\n
            12. Exit\n----------------------------"
  end

  def options(option, app)
    case option
    when 1..7
      list_of_items(option,app)
    when 8
      add_a_book(app)
    when 9
      add_a_music_album(app)
    when 10
      add_a_movie(app)
    when 11
      add_a_game(app)
    else
      puts '---Invalid input---'
    end
  end

  def list_of_items(option,app)
    case option
    when 1
      list_of_books(app)
    when 2
      list_of_music_albums(app)
    when 3
      list_of_movies(app)
    when 4
      list_of_games(app)
    when 5
      list_of_genre(app)
    when 6
      list_of_label(app)
    when 7
      list_of_author(app)
  end

  def list_of_books(app)
    app.list_all_items('Book')
  end

  def list_of_movies(app)
    app.list_all_items('Movie')
  end

  def list_of_music_albums(app)
    app.list_all_items('MusicAlbum')
  end

  def list_of_games(app)
    app.list_all_items('Game')
  end

  def list_of_genre(app)
    app.list_all_genres
  end

  def list_of_author(app)
    app.list_all_authors
  end

  def list_of_label(app)
    app.list_all_labels
  end

  def add_item_options(item_name)
    puts "Enter the #{item_name} title:"
    title = gets.chomp
    puts "Enter the #{item_name} author:"
    author = gets.chomp
    puts "Enter the #{item_name} label:"
    label = gets.chomp
    puts "Enter the #{item_name} source:"
    source = gets.chomp
    puts "Enter the #{item_name} genre:"
    genre = gets.chomp
    [title, author, label, source, genre]
  end

  def add_item_details(details, item)
    item.title = details[0]
    item.author = details[1]
    item.label = details[2]
    item.source = details[3]
    item.genre = details[4]
  end

  def add_a_book(library)
    details = add_item_options('book\'s')
    puts "Enter the book's publisher:"
    publisher = gets.chomp
    puts "Enter the book's publish_date:"
    publish_date = gets.chomp
    puts "Enter the book's cover_state:"
    cover_state = gets.chomp
    book = Book.new(publisher, cover_state, publish_date)
    add_item_details(details, book)
    library.add_item(book)
    puts "#{book.title} added to the library!"
  end

  def add_a_music_album(library)
    details = add_item_options('album\'s')
    puts 'Is the album on spotify?[Y/N]:'
    on_spotify = gets.chomp
    puts "Enter the music album's publish date:"
    publish_date = gets.chomp
    album = MusicAlbum.new(on_spotify, publish_date)
    add_item_details(details, album)
    library.add_item(album)
    puts "#{album.title} added to the library!"
  end

  def add_a_movie(library)
    details = add_item_options('movie\'s')
    puts 'Is the movie silent?[Y/N]:'
    silent = gets.chomp
    puts "Enter the movie's publish date:"
    publish_date = gets.chomp
    movie = Movie.new(silent, publish_date)
    add_item_details(details, movie)
    library.add_item(movie)
    puts "#{movie.title} added to the library!"
  end

  def add_a_game(library)
    details = add_item_options
    puts 'Is the game multiplayer?[Y/N]:'
    multiplayer = gets.chomp
    puts "Enter the game's last played date:"
    last_played_at = gets.chomp
    puts "Enter the game's publish date:"
    publish_date = gets.chomp
    game = Game.new(multiplayer, last_played_at, publish_date)
    add_item_details(details, game)
    library.add_item(game)
    puts "#{game.title} added to the library!"
  end
end
