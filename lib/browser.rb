require 'imdb'
require 'pry'
class Browser 
	attr_reader :movies
	def initialize
		@movies = []
	end
	def receive_input(input)
		@search = Imdb::Search.new(input).movies
	end

#def add_movies(search)
#		@patata.push(search)
#	end

	def find_movies_with_posters
		i = 0
		while @movies.length < 9
			if @search[i].url != nil
				@movies << (@search[i])	
			end
			i += 1
		end

		@movies

	end

end

#browser1 = Browser.new
#result = browser1.receive_input('titanic')
# puts result









# binding.pry