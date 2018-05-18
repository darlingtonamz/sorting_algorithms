module MergeSort
  def self.module_name
    "Merge Sort"
  end
  def self.sort(array, should_return = false)
    return array if array.length <= 1
   
    middle = array.length / 2
    left = self.sort(array[0...middle])
    right = self.sort(array[middle..-1])
    merge(left, right)
  end
   
  def merge(left, right)
    result = []
    until left.empty? || right.empty?
      result << (left.first<=right.first ? left.shift : right.shift)
    end
    result + left + right
  end
end 