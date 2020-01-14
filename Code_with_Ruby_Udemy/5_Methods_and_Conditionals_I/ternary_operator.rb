#! /usr/bin/env ruby


color = "black"
# if color == "black"
#   puts "color is #{color}"
# else
#   puts "color is white"
# end
output = color == "black" ? "color is #{color}" : "color is white"

# puts color == "black" ? "color is #{color}" : "color is white"
puts output
puts "---- ----"
puts

def check_pokemon(pokemon)
  pokemon == "Charizard" ? "Fireball!" : "This is not Charizard!"
end

p check_pokemon("Pikachu")
p check_pokemon("Squirtle")
p check_pokemon("Onyx")
p check_pokemon("Charizard")
