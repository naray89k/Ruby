inst_section = {
:cello => 'string',
:clarinet => 'woodwind',
:drum => 'percussion',
:oboe => 'woodwind',
:trumpet => 'brass',
:violin => 'string'
}

puts "An oboe is a #{inst_section[:oboe]} instrument"
p inst_section[':oboe']
## Remember the keys here are not "strings" in SYMBOLS

##In fact, symbols are so frequently used as hash keys that Ruby has a shortcut syntax: you
##can use name: value pairs to create a hash if the keys are symbols:
inst_section = {
cello: 'string',
clarinet: 'woodwind',
drum: 'percussion',
oboe: 'woodwind',
trumpet: 'brass',
violin: 'string'
}
puts "An oboe is a #{inst_section[:oboe]} instrument"