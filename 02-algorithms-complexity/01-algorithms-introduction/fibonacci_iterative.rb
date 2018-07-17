# Iterative method
def fib(n, list = Array.new(n, 1))
  n.times { |i| list[i] = list[i-1] + list[i-2] unless i < 2 }
  list
end

 p fib(0)
 p fib(1)
 p fib(2)
 p fib(3)
 p fib(4)
 p fib(5)
 p fib(6)
 p fib(7)
 p fib(8)
 p fib(9)