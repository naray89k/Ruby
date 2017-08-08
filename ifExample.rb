#! /usr/bin/ruby
#
#Ruby has all the usual control structures, such as if statements and while loops. Java, C, and
#Perl programmers may well get caught by the lack of braces around the bodies of these
#statements. Instead, Ruby uses the keyword end to signify the end of a body of all the control
#structures:

today = Time.now
if today.saturday?
    puts "Do chores around the house"
elsif today.sunday?
    puts "Relax"
else
    puts "Go to work"
end

#produces:
#Go to work
#Similarly, while
#
radiation = 3500
if radiation > 3000
    puts "Danger, Will Robinson"
end
