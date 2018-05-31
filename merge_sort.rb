# https://rosettacode.org/wiki/Sorting_algorithms/Merge_sort#Ruby
module MergeSort
  def self.module_name
    "Merge Sort"
  end
  def self.sort(array, should_return = false)
    return array if array.length <= 1
   
    middle = array.length / 2 
    # divide array into 2 parts
    # sort each part
    left = self.sort(array[0...middle])
    right = self.sort(array[middle..-1])
    # merge the 2 sorted parts together [LEFT + RIGHT]
    merge(left, right)
  end
   
  def merge(left, right)
    # create pocket to store sorted values
    result = []
    until left.empty? || right.empty?
      # if left:first < right:first
      # remove left:first from left and add to result
      # else do opposite
      result << (left.first<=right.first ? left.shift : right.shift)
      # repeat
    end
    result + left + right
  end
end 