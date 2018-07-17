require 'benchmark'
require_relative 'node'
require_relative 'min_heap'
include Benchmark

root = Node.new('1', rand)
my_tree1 = MinHeapTree.new(root)
my_tree2 = MinHeapTree.new(root)
my_tree3 = MinHeapTree.new(root)

Benchmark.benchmark(CAPTION, 7, FORMAT, ">avg:") do |x|
	t1 = x.report("Push 10,000 items to tree 1: ") { 
		(2..10000).each do |i|
			new_node = Node.new(i.to_s, rand)
			my_tree1.insert(root, new_node)
		end 
	}		
	t2 = x.report("Push 10,000 items to tree 2: ") { 
		(2..10000).each do |i|
			new_node = Node.new(i.to_s, rand)
			my_tree2.insert(root, new_node)
		end 
	}		
	t3 = x.report("Push 10,000 items to tree 3: ") { 
		(2..10000).each do |i|
			new_node = Node.new(i.to_s, rand)
			my_tree3.insert(root, new_node)
		end 
	}	
	[(t1 + t2 + t3) / 3]
end

Benchmark.benchmark(CAPTION, 7, FORMAT, ">avg:") do |x|
	f1 = x.report("Find 5,000th item in tree 1: ") { 
		my_tree1.find(root, '5000') 
	}
	f2 = x.report("Find 5,000th item in tree 2: ") { 
		my_tree2.find(root, '5000') 
	}
	f3 = x.report("Find 5,000th item in tree 3: ") { 
		my_tree3.find(root, '5000') 
	}
	[(f1 + f2 + f3) / 3]
end

