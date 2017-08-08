#! /usr/bin/ruby

NORTH = 1
EAST  = 2
SOUTH = 3
WEST  = 4

def walk(direction)
    if direction == :north
        puts "NORTH"
    elsif direction == :south
        puts "SOUTH"
    elsif direction == :east
        puts "EAST"
    elsif direction == :west
        puts "WEST"
    end
end

walk(:north)
walk(:east)
walk(:south)
walk(:west)


# Most of the time, the actual numeric values of these constants are irrelevant (as long as they
# are unique). All you want to do is differentiate the four directions.
# Ruby offers a cleaner alternative. Symbols are simply constant names that you don’t have to
# predeclare and that are guaranteed to be unique. A symbol literal starts with a colon and is
# normally followed by some kind of name:
# Symbols are frequently used as keys in hashes. We could write our previous example as this:
inst_section = {
    :cello => 'string',
    :clarinet => 'woodwind',
    :drum => 'percussion',
    :oboe => 'woodwind',
    :trumpet => 'brass',
    :violin => 'string'
}
inst_section[:oboe] # => "woodwind"
inst_section[:cello] # => "string"
# Note that strings aren't the same as symbols...
inst_section['cello'] # => nil



# In fact, symbols are so frequently used as hash keys that Ruby has a shortcut syntax: you
# can use name: value pairs to create a hash if the keys are symbols:
inst_section = {
    cello:      'string',
    clarinet:   'woodwind',
    drum:       'percussion',
    oboe:       'woodwind',
    trumpet:    'brass',
    violin:     'string'
}
puts "An oboe is a #{inst_section[:oboe]} instrument"
# produces:
# An oboe is a woodwind instrument
