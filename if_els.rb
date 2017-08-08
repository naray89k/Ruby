today = Time.now
if today.saturday?
	puts "Do chores around the house"
elsif today.sunday?
	puts "Relax"
else
	puts "Go to work"
end

age = 19
voter = 0
voter = voter + 1 if age >= 18
puts voter