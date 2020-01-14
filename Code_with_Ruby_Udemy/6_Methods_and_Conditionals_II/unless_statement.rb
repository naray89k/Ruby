#! /usr/bin/env ruby

password = "potter"

unless password == "p@ssw0rd"
  puts "not allowed"
end

unless password.include?('a')
  puts "It does not include letter 'a'"
end
