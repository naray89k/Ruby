#! /usr/bin/env ruby

puts "Hello World"
puts 'Hello World'

puts 'Julie Said "Good Bye" to Romeo'
puts "Julie Said 'Good Bye' to Romeo"

puts 'Julie Said \'Good Bye\' to Romeo'
puts "Julie Said \"Good Bye\" to Romeo"

phrase = 'My Name is Narayanan'
# single quotes do not interpolate
puts '\tJulie Said "Good Bye" \n to Romeo'
puts '#{phrase}'

# double quotes quotes do interpolate.
puts "\tJulie Said 'Good Bye' \n to Romeo"
puts "#{phrase}"
