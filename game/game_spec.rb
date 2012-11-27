require_relative 'game'

describe Game do

	before do
		@game = Game.new("knuckleheads")

		@initial_health = 100
		@player = Player.new("moe", @initial_health)

		@game.add_player(@player)
	end

	it "w00ts the player if high number is rolled" do
		#@game.stub(:die).and_return(5)
		#@game.play.should == "moe got w00ted!"

		Die.any_instance.stub(:roll).and_return(5)
		@game.play(2)
		@player.health.should == @initial_health + (15 * 2)
	end

	it "skips the player if medium number is rolled" do
		Die.any_instance.stub(:roll).and_return(3)
		@game.play(2)
		@player.health.should == @initial_health
	end

	it "blams the player if low number is rolled" do
		Die.any_instance.stub(:roll).and_return(1)
		@game.play(2)
		@player.health.should == @initial_health - (10 * 2)
	end

end

