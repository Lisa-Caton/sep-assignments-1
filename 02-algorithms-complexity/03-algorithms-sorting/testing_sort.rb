require 'benchmark'
require_relative './bloc_bubble_sort'
require_relative './bloc_heap_sort'
require_relative './bloc_insertion_sort'
require_relative './bloc_merge_sort'
require_relative './bloc_quicksort'
require_relative './bloc_selection_sort'
require_relative './bucket_sort'

include Benchmark

print "Bubble Sort: [5, 9, 3, 20, 10, 13, 2, 0, 1] \n"
p bubble_sort([5, 9, 3, 20, 10, 13, 2, 0, 1, -4])

print "\nHeap Sort: [5, 9, 3, 20, 10, 13, 2, 0, 1, 93, 84, 32]\n"
p heap_sort([5, 9, 3, 20, 10, 13, 2, 0, 1, 93, 84, 32, -5])

print "\nInsertion Sort: [12, 3, 1, 2, 4, 70, 89, 3, 3] \n"
p insertion_sort([12, 3, 1, 2, 4, 70, 89, 3, 3, -10])

print "\nMerge Sort: [5, 9, 3, 20, 10, 13, 2, 0, 1] \n"
p merge_sort([5, 9, 3, 20, 10, 13, 2, 0, 1, -20])

print "\nQuick Sort: [12, 3, 1, 2, 4, 70, 89, 3, 3]\n"
p quicksort([12, 3, 1, 2, 4, 70, 89, 3, 3, -3])

print "\nSelection Sort: [5, 9, 3, 20, 10, 13, 2, 0, 1, 93, 84, 32]\n"
p selection_sort([5, 9, 3, 20, 10, 13, 2, 0, 1, 93, 84, 32, 0, -8])

print "\nBucket Sort: [5, 9, 3, 20, 10, 13, 2, 0, 1, 93, 84, 32]\n"
p BucketSort.sort [5, 9, 3, 20, 10, 13, 2, 0, 1, 93, 84, 32, -234]

print "\n\n"

Benchmark.benchmark(CAPTION, 20, FORMAT) do |x|
	x.report("Bubble    sort 50 items: ") { 
      bubble_sort(50.times.map{ 1 + Random.rand(0..1000) }) 
  }
	x.report("Heap      sort 50 items: ") { 
      heap_sort(50.times.map{ 1 + Random.rand(0..1000) }) 
  }
	x.report("Insertion sort 50 items: ") { 
      insertion_sort(50.times.map{ 1 + Random.rand(0..1000) }) 
  }
	x.report("Merge     sort 50 items: ") { 
      merge_sort(50.times.map{ 1 + Random.rand(0..1000) }) 
  }
	x.report("Quick     sort 50 items: ") { 
      quicksort(50.times.map{ 1 + Random.rand(0..1000) } ) 
  }
	x.report("Selection sort 50 items: ") { 
      selection_sort(50.times.map{ 1 + Random.rand(0..1000) }) 
  }
	x.report("Bucket    sort 50 items: ") { 
      BucketSort.sort(50.times.map{ 1 + Random.rand(0..1000) }) 
  }
end

print "\n\n"
Benchmark.benchmark(CAPTION, 20, FORMAT) do |x|
	x.report("Bubble    sort 500 items: ") { 
      bubble_sort(500.times.map{ 1 + Random.rand(0..1000) }) 
  }
	x.report("Heap      sort 500 items: ") { 
      heap_sort(500.times.map{ 1 + Random.rand(0..1000) }) 
  }
	x.report("Insertion sort 500 items: ") { 
      insertion_sort(500.times.map{ 1 + Random.rand(0..1000) }) 
  }
	x.report("Merge     sort 500 items: ") { 
      merge_sort(500.times.map{ 1 + Random.rand(0..1000) }) 
  }
	x.report("Quick     sort 500 items: ") { 
      quicksort(500.times.map{ 1 + Random.rand(0..1000) } ) 
  }
	x.report("Selection sort 500 items: ") { 
      selection_sort(500.times.map{ 1 + Random.rand(0..1000) }) 
  }
	x.report("Bucket    sort 500 items: ") { 
      BucketSort.sort(500.times.map{ 1 + Random.rand(0..1000) }) 
  }
end