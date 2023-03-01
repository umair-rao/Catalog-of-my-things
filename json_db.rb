require 'json'

def save_books(book)
  JSON.dump(book, File.open('./storage/books.json', 'a'))
end

def save_music_albums(music_album)
  JSON.dump(music_album, File.open('./storage/music_album.json', 'a'))
end

def save_movies(movie)
  JSON.dump(movie, File.open('./storage/movie.json', 'a'))
end

def save_games(game)
    JSON.dump(game, File.open('./storage/movie.json', 'a'))
end

def load_books(books)
  json_string = JSON.parse(File.read('./database/books.json'))
  json_string.each do |book|
    books << Book.new(book['title'], book['author'])
  end
rescue StandardError
  print 'no books was saved'
end

def load_movies(people)
  json_string = JSON.parse(File.read('./database/people.json'))
  json_string.each do |person|
    if person['class'] == 'Student'
      people << Student.new(person['age'], nil, name: person['name'],
                                                parent_permission: person['parent_permission'], id: person['id'])
    else
      people << Teacher.new(person['age'], person['specialization'], name: person['name'], id: person['id'])
    end
  end
rescue StandardError
  print 'no person was saved'
end

def load_games(rentals, books, people)
  json_string = JSON.parse(File.read('./database/rentals.json'))
  json_string.each do |rental|
    book = books.find { |b| b.title == rental['book']['title'] }
    person = people.find { |p| p.id == rental['person']['id'] }
    rentals << person.add_rental(rental['date'], book)
  end
rescue StandardError
  print 'no rentals was saved'
end

def save_state(app)
  save_books(app.books)
  save_movies(app.people)
  save_music_albums(app.rentals)
end

def load_state(app)
  load_books(app.books)
  load_people(app.people)
  load_rentals(app.rentals, app.books, app.people)
end
