# https://www.sitepoint.com/sorting-algorithms-ruby/
module BubbleSort
	def self.module_name
		"Bubble Sort"
	end
	
	def self.sort(array, should_return = false)
		n = array.length
		# from 0 to n-1
		loop do
			swapped = false
			(n-1).times do |i|
				if array[i] > array[i+1]
					array[i], array[i+1] = array[i+1], array[i]
					swapped = true
				end
			end
	
			break if not swapped
		end
	
		array if should_return
	end
end

# print BubbleSort.sort([2,3,9,12,7,34], true)