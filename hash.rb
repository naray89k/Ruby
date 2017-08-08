
inst_section = Hash.new(0)
inst_section = {
'cello' => 'string',
'clarinet' => 'woodwind',
'drum' => 'percussion',
'oboe' => 'woodwind',
'trumpet' => 'brass',
'violin' => 'string'
}

instrument = 'violin'

p inst_section['oboe']
p inst_section['cello']
p inst_section['bassoon']
puts inst_section['bassoon']
p inst_section[instrument]



# we’ll use the p method to write the values to the console. This works like puts but displays values such as nil explicitly.