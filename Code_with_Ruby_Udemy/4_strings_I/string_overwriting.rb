#! /usr/bin/env ruby

thing = "Rocket Ship"

p thing

thing[0] = "P"

p thing

# ====

fact = "I love Blueberry Pie"
p fact

fact[7, 4] = "Rasp"
p fact

fact[7..10] = "Blue"
p fact

fact[2..5] = "absolutely adore"
p fact
