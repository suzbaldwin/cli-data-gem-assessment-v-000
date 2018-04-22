class NewMovies::CLI
  def call
    list_movies
    menu
    goodbye
  end

  def list_movies
    puts "Todays new movies:"

      @movies = NewMovies::Movie.today
    end

    def menu
      input = nil
      while input != "exit"
      puts "Enter the movie you would like more info on or type list to see movies or type exit."

        input = gets.strip.downcase
        case input
        when "1"
          puts "more info on movie 1"
        when "2"
          puts "more info on movie 2"
        when "list"
          list_movies
        else
          puts "Not sure what you want please type list or exit"
        end
      end

    end
    def goodbye
      puts "See you tomorrow for more movies!"
    end

end
