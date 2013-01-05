class Movie
	attr_accessor :title
	attr_reader :rank, :snack_carbs

	def initialize(title, rank=0)
		@title = title.capitalize
		@rank = rank
		@snack_carbs = Hash.new(0)
	end

	def to_csv
		"#{@title},#{@rank}"
	end

	def self.from_csv(line)
		title, rank = line.split(',')
		Movie.new(title, Integer(rank))
	end

	def each_snack
		@snack_carbs.each do |name, carbs|
			snack = Snack.new(name, carbs)
			yield snack
		end
	end

	def carbs_consumed
		@snack_carbs.values.reduce(0, :+)
	end

	def ate_snack(snack)
		#puts snack
		@snack_carbs[snack.name] += snack.carbs	
		puts "#{@title} led to #{snack.carbs} #{snack.name} carbs being consumed."
		puts "#{@title}'s snacks: #{@snack_carbs}"
	end

	def title=(new_title)
		@title = new_title.capitalize
	end

	def hit?
		@rank >= 10
	end

	def status
		hit? ? "hit" : "flop"
	end

	def thumbs_up
		@rank += 1
		#puts "#{@title} just got a new thumbs up. ^___^"
	end

	def thumbs_down
		@rank -= 1
		#puts "#{@title} just got a new thumbs down. ;____;"
	end

	def <=>(other_movie)
		other_movie.rank <=> @rank
	end

	def to_s
		"#{@title} has a rank of #{@rank} (#{status})."
	end
end

if __FILE__ == $0
	movie = Movie.new("Goonies", 100)
	puts movie.title
	puts movie.rank

	movie.thumbs_up
	movie.thumbs_down
	puts movie.rank

	puts movie
end
