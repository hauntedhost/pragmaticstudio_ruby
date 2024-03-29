require "flicks/movie"

module Flicks
	describe Movie do
		before do
			$stdout = StringIO.new
			@initial_rank = 10
			@movie = Movie.new("goonies", @initial_rank)
		end

		it "has a capitalized title" do
			@movie.title.should == "Goonies"
		end

		it "has an initial rank" do
			@movie.rank.should == 10
		end

		it "has a string representation" do
			#@movie.to_s.should == "Goonies has a rank of 10."
			@movie.to_s.should_not be_empty
		end

		it "increases rank by 1 when given a thumbs up"	do
			@movie.thumbs_up
			@movie.rank.should == @initial_rank + 1
		end

		it "decreases rank by 1 when given a thumbs down" do 
			@movie.thumbs_down
			@movie.rank.should == @initial_rank - 1
		end

		context "created with a default rank" do
			before do
				@movie = Movie.new("goonies")
			end

			it "has a rank of 0" do
				@movie.rank.should == 0
			end
		end

		context "with a rank of at least 10" do
			before do
				@movie = Movie.new("goonies", 10)
			end

			it "is a hit" do
				@movie.hit?.should be_true
			end

			it "has a hit status" do
				@movie.status.should == "hit"
			end
		end

		context "with a rank of less than 10" do
			before do
				@movie = Movie.new("goonies", 9)
			end

			it "is a flop" do
				@movie.hit?.should be_false
			end

			it "has a flop status" do
				@movie.status.should == "flop"
			end
		end
	end
end
