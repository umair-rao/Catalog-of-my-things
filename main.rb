require './game'
require './music_album'
require './movie'
require './book'
require_relative 'app'
require './json_db'
require './choices'
def main
  puts 'Welcome to the Library App!'
  library = Library.new
  load_state(library)
  choice = Choices.new
  loop do
    choice.display_options
    option = gets.chomp.to_i
    if option == 13
      save_state(library)
      puts 'Thanks for visiting!!!!'
      exit
    end
    choice.options(option, library)
  end
end
main
