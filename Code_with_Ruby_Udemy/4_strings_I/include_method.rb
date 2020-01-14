#! /usr/bin/env ruby

name = "Snow White"

p name.include?('White')
p name.include?(' ')
p name.include?('white')
p name.downcase.include?('white')
p name.upcase.include?('OW')
p name.include?('hit')
p name.include?(' it')
