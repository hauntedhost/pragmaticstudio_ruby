greeting = "welcome"
current_time = Time.new

name1 = "larry"
health1 = 60

name2 = "curly"
health2 = "77"

name3 = "moe"
health3 = "97"

name4 = "shemp"
health4 = 90

puts "#{greeting}! game started on #{current_time.strftime('%A %m/%d/%Y')}.\n\n"

puts "#{name1}'s health is #{health1 / 9.0}.\n"
puts "players:\n\t#{name1}\n\t#{name2}\n\t#{name3}\n"

puts "#{name1.capitalize} has a health of #{health1}\n"
puts "#{name2.upcase} has a health of #{health2}\n"

health2 = health1
puts "#{name2.upcase} has a health of #{health2}\n"

health1= 30
puts "#{name1.capitalize} has a health of #{health1}\n"
puts "#{name2.upcase} has a health of #{health2}\n"

puts "#{name3.capitalize} has a health of #{health3}".center(50, '*') + "\n"
puts "#{name4.capitalize.ljust(50, '.')}#{health4} health.\n"






