require 'pry'
require 'imdb'
require 'ascii_charts'

class ImdbRating
	def initialize 
	end 

	def read_movies_list
		IO.read("movies.txt")
	end 

	def search_movie movie_title
		search = Imdb::Search.new(movie_title)	
		new_list = search.movies
		new_list.first
	end 

	def show_title movie_id
		i = Imdb::Movie.new(movie_id)
		puts i.title
		puts i.cast_members.first
		puts i.rating
	end 

	def show_ratings 
		index = 1
		
		movie_ratings = [[0, 7.8], [1, 8.3], [2, 9.2], [3, 7.4], [4, 8.7], [5,8.0], [7.7]]
		movie_ratings.each do |i|
			puts i
	end 
	def draw_chart 
		puts AsciiCharts::Cartesian.new([[0, 7.8], [1, 8.3], [2, 9.2], [3, 7.4], [4, 8.7], [5,8.0], [7.7]], :bar => true, :hide_zero => true).draw
	end 
end 
end 


imdb = ImdbRating.new

movie_result = imdb.search_movie "Ghostbusters"
imdb.show_title(movie_result.id)
movie_result = imdb.search_movie "Die Hard"
imdb.show_title(movie_result.id)
movie_result = imdb.search_movie "The Godfather"
imdb.show_title(movie_result.id)
movie_result = imdb.search_movie "Home Alone"
imdb.show_title(movie_result.id)
movie_result = imdb.search_movie "Star trek, the new generation"
imdb.show_title(movie_result.id)
movie_result = imdb.search_movie "The night of the living dead"
imdb.show_title(movie_result.id)
movie_result = imdb.search_movie "Titanic"
imdb.show_title(movie_result.id)

#Hago una llamada a la función de mostrar las puntuaciones y dibujar la tabla. 
puts imdb.show_ratings()

#Da error por un método no definido...
#puts imdb.draw_chart()







