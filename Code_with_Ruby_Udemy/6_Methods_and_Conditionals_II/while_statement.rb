#! /usr/bin/env ruby

=begin
i = 1
while i < 11
  p i
  i += 1
end
=end

=begin
i = 2
while i.even?
  puts i
  i += 1
end
=end

status = true
while status
  print "Please, Enter the Username: "
  username = gets.chomp.downcase
  print "Please, Enter the Password: "
  password = gets.chomp.downcase
  if username == "narayanan" && password == "bestpasswordever"
    puts "Entry granted. The nuclear codes are ..."
    status = false
  elsif username == "quit" || password == "quit"
    puts "GoodBye! Better Luck Next Time"
    status = false
  else
    puts "Incorrect Combination, try again or enter 'quit' to exit"
  end
end
