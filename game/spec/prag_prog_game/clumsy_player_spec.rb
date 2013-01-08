require 'prag_prog_game/player'
require 'prag_prog_game/clumsy_player'
require 'prag_prog_game/treasure_trove'

module PragProgGame
	describe ClumsyPlayer do
		before do
			@name = "klutz"
			@initial_health = 100
			@boost_factor = 5
			@player = ClumsyPlayer.new(@name, @initial_health, @boost_factor)
		end

		it "only gets half the point value for each treasure" do
			@player.points.should == 0

			hammer = Treasure.new(:hammer, 50)
			@player.found_treasure(hammer)
			@player.found_treasure(hammer)
			@player.found_treasure(hammer)

			@player.points.should == 75

			crowbar = Treasure.new(:crowbar, 400)		
			@player.found_treasure(crowbar)

			@player.points.should == 275

			yielded = []
			@player.each_found_treasure do |treasure|
				yielded << treasure
			end

			yielded.should == [Treasure.new(:hammer, 75), Treasure.new(:crowbar, 200)]
		end

		it "has a boost factor" do
			@player.boost_factor.should == @boost_factor
		end

		it "gets a boost factor for every w00t" do
			@player.w00t
			@player.health.should == @initial_health + (15 * @boost_factor)
		end
	end
end