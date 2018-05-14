# https://coderwall.com/p/z8vowg/simple-sorting-algorithms-with-ruby

# Insertion sort is a simple sorting algorithm that builds 
# the final sorted array (or list) one item at a time. 
# It is much less efficient on large lists than more advanced 
# algorithms such as quicksort, heapsort, or merge sort.
# **wikipedia**
module InsertionSort
	def self.module_name
		"Inserting Sort"
	end

	def self.sort(array, should_return = false)
		(1...array.size).each do |i|
			j = i
			while j > 0 and array[j-1] > array[j]
				array[j], array[j-1] = array[j-1], array[j]
				j = j - 1
			end
		end
	
		array if should_return
	end
end

# print InsertionSort.sort([2,3,9,12,7,34], true)