side = 4
while side <= 10
	area = side*side
	puts "Area=#{area} for Square of side=#{side}"
	side = side + 1
end

# Concise Version
side = 3
printf("Area=%d for Square of side=%d \n",side*side,side) while (side = side+1) <= 10
#printf("%-15s|%d|\n", "Cathy", 15)