class NewMovies::Movie
attr_accessor :name, :actor, :synopsis, :url
  def self.today
    puts <<-DOC
      1. Avengers
      2. Lady Bird
      DOC

      movie_1 = self.new
      movie_1.name = "Avengers"
      movie_1.actor = "the actors name"
      movie_1.synopsis = "movie synopsis"
      movie_1.url = "url"

      movie_2 = self.new
      movie_2.name = "I Feel Pretty"
      movie_2.actor = "the actors name"
      movie_2.synopsis = "movie synopsis"
      movie_2.url = "url"
      [movie_1, movie_2]
  end
  def self.scrape_movies
    movies = []

movies << self.scrape_fandango

movies
  end
def self.scrape_fandango
  doc = Nokogiri::HTML(open("https://fandango.com/"))
binding.pry

end
end