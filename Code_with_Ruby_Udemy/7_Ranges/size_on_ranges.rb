#! /usr/bin/env ruby

numbers = 143..769
p numbers.size

numbers = 143...769
p numbers.size

# size method will always return nil for Alphabetical Ranges
alphabets = "A".."z"
p alphabets.size
