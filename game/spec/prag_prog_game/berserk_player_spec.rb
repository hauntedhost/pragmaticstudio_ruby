require 'prag_prog_game/player'
require 'prag_prog_game/berserk_player'
require 'prag_prog_game/treasure_trove'

module PragProgGame
	describe BerserkPlayer do
		before do
			@name = "berserker"
			@initial_health = 50
			@player = BerserkPlayer.new(@name, @initial_health)
		end

		it "does not go berserk when w00ted up to 5 times" do
			5.times { @player.w00t }
			@player.berserk?.should be_false
		end

		it "goes berserk when w00ted more than 5 times" do
			6.times { @player.w00t }
			@player.berserk?.should be_true
		end

		it "gets w00ted instead of blammed after receiving 6 w00ts" do
			6.times { @player.w00t }
			2.times { @player.blam }

			@player.health.should == @initial_health + (8 * 15)
		end
	end
end