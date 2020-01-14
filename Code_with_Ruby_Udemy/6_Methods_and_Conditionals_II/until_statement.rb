#! /usr/bin/env ruby

=begin
i = 1
while i < 11
  p i
  i += 1
end
=end

i = 1
until i > 10
  p i
  i += 1
end

=begin
i = 2
while i.even?
  puts i
  i += 1
end
=end


i = 2
until i.odd?
  puts i
  i += 1
end
