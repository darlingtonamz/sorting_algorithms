require 'benchmark'
require 'json'
require './bubble_sort'
require './insertion_sort'
require './selection_sort'
require './merge_sort'

include BubbleSort
include InsertionSort
include SelectionSort
include MergeSort

def benchmark(data, m)
	Benchmark.bm(20) do |bm|  
		data.keys.each do |key|
			bm.report("#{m.module_name} : #{key}") { 
				m.sort(data[key])
			}
		end     
  end
end

def compare modules
	modules.each do |m|
		data = JSON.parse(File.read('./data.json'))
		benchmark(data, m)
	end
end

compare([BubbleSort, MergeSort]) # SelectionSort, InsertionSort, ])