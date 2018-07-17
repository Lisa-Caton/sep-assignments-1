require 'benchmark'
require_relative 'node'
require_relative 'binary_search_tree'
include Benchmark

root = Node.new('1', rand)
my_tree1 = BinarySearchTree.new(root)
my_tree2 = BinarySearchTree.new(root)
my_tree3 = BinarySearchTree.new(root)

Benchmark.benchmark(CAPTION, 7, FORMAT, ">avg:") do |x|
	t1 = x.report("Push 100,000 items to tree 1: ") { 
		(2..100000).each do |i|
			new_node = Node.new(i.to_s, rand)
			my_tree1.insert(root, new_node)
		end 
	}		
	t2 = x.report("Push 100,000 items to tree 2: ") { 
		(2..100000).each do |i|
			new_node = Node.new(i.to_s, rand)
			my_tree2.insert(root, new_node)
		end 
	}		
	t3 = x.report("Push 100,000 items to tree 3: ") { 
		(2..100000).each do |i|
			new_node = Node.new(i.to_s, rand)
			my_tree3.insert(root, new_node)
		end 
	}	
	[(t1 + t2 + t3) / 3]
end

Benchmark.benchmark(CAPTION, 7, FORMAT, ">avg:") do |x|
	f1 = x.report("Find 50,000th item in tree 1: ") { 
		my_tree1.find(root, '50000') 
	}
	f2 = x.report("Find 50,000th item in tree 2: ") { 
		my_tree2.find(root, '50000') 
	}
	f3 = x.report("Find 50,000th item in tree 3: ") { 
		my_tree3.find(root, '50000') 
	}
	[(f1 + f2 + f3) / 3]
end

Benchmark.benchmark(CAPTION, 7, FORMAT, ">avg:") do |x|
	t1 = x.report("Push 500,000 items to tree 1: ") { 
		(2..500000).each do |i|
			new_node = Node.new(i.to_s, rand)
			my_tree1.insert(root, new_node)
		end 
	}		
	t2 = x.report("Push 500,000 items to tree 2: ") { 
		(2..500000).each do |i|
			new_node = Node.new(i.to_s, rand)
			my_tree2.insert(root, new_node)
		end 
	}		
	t3 = x.report("Push 500,000 items to tree 3: ") { 
		(2..500000).each do |i|
			new_node = Node.new(i.to_s, rand)
			my_tree3.insert(root, new_node)
		end 
	}	
	[(t1 + t2 + t3) / 3]
end