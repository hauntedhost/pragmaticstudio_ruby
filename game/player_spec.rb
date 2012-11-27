require_relative "player"

describe Player do
	before do
		$stdout = StringIO.new
		@name = "larry"
		@health = 150
		@player = Player.new(@name, @health)
	end

	it "has a capitalized name" do
		@player.name.should == @name.capitalize
	end

	it "has an initial health matching health value passed at creation" do
		@player.health.should == @health
	end

	it "has a string representation" do
		@player.to_s.should_not == ""
		@player.to_s.should_not == nil
	end

	it "computes a score as the sum of its health and length of name" do
		@player.score.should == @health + @name.length		
	end

	it "increases health by 15 when w00ted" do
		@player.w00t
		@player.health.should == @health + 15
	end

	it "decreases health by 10 when blammed" do
		@player.blam
		@player.health.should == @health - 10
	end

	context "with an initial health of 150" do
		before do
			$stdout = StringIO.new
			@name = "sean"
			@health = 150
			@player = Player.new(@name, @health)
		end
		
		it "is strong" do
			@player.should be_strong
		end
	end

	context "with an initial health of 100" do
		before do
			$stdout = StringIO.new
			@name = "sean"
			@health = 100
			@player = Player.new(@name, @health)
		end
		
		it "is wimpy" do
			@player.should_not be_strong
		end
	end

	context "in a collection of players" do
		before do
			@player1 = Player.new("moe", 100)
			@player2 = Player.new("larry", 200)
			@player3 = Player.new("curly", 300)

			@players = [@player1, @player2, @player3]
		end

		it "is sorted by decreasing score" do
			@players.sort.should == [@player3, @player2, @player1]
		end
	end
		
end

