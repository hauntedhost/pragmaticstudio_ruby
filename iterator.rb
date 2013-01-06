def three_times
	puts "ready"
	yield(1)
	puts "set"
	yield(2)
	puts "go"	
	yield(3)
end

def compute
	block_given? ? (puts yield) : (puts "does not compute")
end

#three_times { |number| puts number * number } |
#compute

numbers = (1..10).to_a
#puts numbers.select { |n| n.even? }

def my_select(array)
	results = []
	array.each do |element|
		results << element if yield(element)
	end
	results
end

# puts my_select(numbers) { |n| n.even? }

def five_times
	1.upto(5) do |n|
		yield(n)
	end
end

# five_times do |n|
# 	puts "#{n} situps"
#	puts "#{n} pushups"
#	puts "#{n} chinups"
# end

def n_times(number)
	1.upto(number) do |count|
		yield(count)
	end
end

n_times(5) do |n|
	puts "#{n} situps"
	puts "#{n} pushups"
	puts "#{n} chinups"
end

