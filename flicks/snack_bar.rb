class Snack
	attr_reader :name, :carbs

	def initialize(name, carbs)
		@name = name
		@carbs = carbs
	end
end

popcorn = Snack.new("popcorn", 20)
puts popcorn.name
puts popcorn.carbs

