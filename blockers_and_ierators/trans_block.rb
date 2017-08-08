#! /usr/bin/ruby
#class File
#	def self.open_and_process(*args)
#		f = File.open(*args)
#		yield f
#		f.close()
#	end
#end

class File
	def self.my_open(*args)
		result = file = File.new(*args)
		# If there's a block, pass in the file and close the file when it returns
		puts block_given?
		if block_given?
			result = yield file
			file.close
		end
		result
	end
end

File.my_open("testfile.txt", "r") do |fileName|
	while line = fileName.gets
		puts line
	end
end
