#! /usr/bin/env ruby

puts "EMPTY METHOD"
name = "Snow White"
p "".empty?
p "".length
p "".nil?
p name.empty?

puts

puts "NIL METHOD"
last_name = name[100, 4]
p last_name.nil?
