newArray = ["H", "A", "L"].collect {|x| x.succ }
numArray = [1,2,3,4].collect{|elem| elem.succ}
puts "#{newArray.class}"
puts "#{newArray.inspect}"
puts "#{numArray.class}"
puts "#{numArray.inspect}"


summation = [1,3,5,7].inject(0) {|sum, element| sum+element}
product = [1,3,5,7].inject(1) {|product, element| product*element}
# summation = [1,3,5,7].inject {|sum, element| sum+element}        ==> This is also same as above summation
# product = [1,3,5,7].inject {|product, element| product*element}  ==> This is also same as above product
puts "#{summation.class}"
puts "SUM: #{summation}"
puts "PRO: #{product}"

# SHORTCUT for summation:
# =======================
summation = [1,3,5,7].inject(:+)
product = [1,3,5,7].inject(:*)
puts "SUM: #{summation}"
puts "PRO: #{product}"