# require 'file'
require 'json'
def get_array(size)
	print "#{size} : Generating array"
	out = Array.new(size) { rand(1...size) }
	puts " | DONE"
	out
end

def generate
	out = {
		ten__: get_array(10),
		one_h: get_array(100),
		one_k: get_array(1000),
		ten_k: get_array(10000),
		# hun_k: get_array(100000),
		# mill_: get_array(1000000)
	}
	
	print "Writing to file"
	File.open('data.json', 'w') { |file| file.write(out.to_json) }
	 # File.write('filename.json', out.to_json)
	puts " | DONE"
	 
end

generate