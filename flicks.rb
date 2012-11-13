class Movie
	attr_accessor :title
	attr_reader :rank

	def initialize(title, rank=0)
		@title = title.capitalize
		@rank = rank
	end

	def normalized_rank
		@rank / 10
	end
	
	def thumbs_up
		@rank += 1
	end

	def thumbs_down
		@rank -= 1
	end
	
	def to_s
		"#{@title} has a rank of #{normalized_rank}"
	end
end

movie1 = Movie.new("goonies", 10)
movie2 = Movie.new("ghostbusters", 9)
movie3 = Movie.new("goldfinder")

movie1.thumbs_up
puts movie1
movie1.thumbs_down
movie1.thumbs_down
puts movie1
puts movie1.title
puts movie1.rank
movie1.title = "goonies 2.0"
puts movie1.title
puts movie1.normalized_rank

movies = [movie1, movie2, movie3]
movies.each do |m|
	m.thumbs_up
	puts m
end


