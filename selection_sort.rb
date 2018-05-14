# https://coderwall.com/p/z8vowg/simple-sorting-algorithms-with-ruby

# selection sort is a sorting algorithm, specifically an in-place 
# comparison sort. It has O(n2) time complexity, making it 
# inefficient on large lists, and generally performs worse 
# than the similar insertion sort. Selection sort is noted for 
# its simplicity, and it has performance advantages over more 
# complicated algorithms in certain situations, 
# particularly where auxiliary memory is limited.
# **wikipedia**

module SelectionSort
	def self.module_name
		"Selection Sort"
	end
	
	def self.sort(array, should_return = false)
	
		(0...array.size).each do |j|
			# find index of minimum element in the unsorted part 
			iMin = j
			(j+1...array.size).each do |i|
				iMin = i if array[i] < array[iMin]
			end
	
			# then swap it
			array[j], array[iMin] = array[iMin], array[j]
		end
	
		array if should_return
	end
end

# print SelectionSort.sort([2,3,9,12,7,34], true)
