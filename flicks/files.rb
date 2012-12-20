# open and close
file = File.open("movies.csv")
file.each_line do |line|
	puts line
end
file.close

puts

# each_line
File.open("movies.csv") do |file|
	puts "size = #{file.size}"
	file.each_line do |line|
		puts line
	end
end

puts

# succinct: readlines
File.readlines("movies.csv").each do |line|
	puts line
end
