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

end

