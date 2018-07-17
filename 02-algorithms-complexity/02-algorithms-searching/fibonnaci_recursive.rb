# Iterative method
def fib(n, list = Array.new(n, 1))
  n.times { |i| list[i] = list[i-1] + list[i-2] unless i < 2 }
  list 
end

# The recursive method
def fib_rec(n, list = Array.new)
  return list if n < 1
  list << (list.length < 2 ? 1 : list[-1] + list[-2])
  fib_rec(n-1, list)
end


start_time = Time.now
p fib(20)  
end_time = Time.now
puts "Runtime in miliseconds (iterative): #{end_time - start_time } "

print "\n"

start_time = Time.now
p fib_rec(20)  
end_time = Time.now
puts "Runtime in miliseconds (recursive): #{end_time - start_time }"