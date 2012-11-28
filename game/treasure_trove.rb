Treasure = Struct.new(:name, :points)

module TreasureTrove

	treasures = {
		:pie => 5,
		:bottle => 25,
		:hammer => 50,
		:skillet => 100,
		:broomstick => 200,
		:crowbar => 400
	}
	#puts treasures

	TREASURES = Array.new
	treasures.each_pair do |name, points|
		TREASURES.push Treasure.new(name, points)
		#puts "#{name}, #{points}"
	end	
	#puts TREASURES

	def self.random
		TREASURES.sample		
	end

end

