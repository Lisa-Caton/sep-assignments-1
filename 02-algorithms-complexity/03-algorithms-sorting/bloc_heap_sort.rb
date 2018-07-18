# http://www.cnblogs.com/napoleon_liu/archive/2010/05/30/1747281.html
# heap_sort.rb

def max_heap? array

  (array.size-1).downto(1) do |i|
    parent = (i-1)/2
    return false if array[parent] < array[i]
  end
  true
end

def max_heap_unshift_down array, tail
  i = tail
  while i > 0
    parent = (i-1)/2
    if  array[parent] < array[i]
       array[i], array[parent] = array[parent], array[i]
       i = parent
    else
      break
    end
  end
end

def max_heap_shift_up array, tail
  array[0], array[tail] = array[tail], array[0]
  tail = tail-1
  i = 0;
  while true
    next_i = i
    left_child = 2*i+1
    right_child = 2*i+2
    if right_child <=tail and array[left_child] < array[right_child]
      next_i = right_child
    elsif left_child <=tail
      next_i = left_child
    end

    if i < next_i and array[i] < array[next_i]
      array[i], array[next_i] = array[next_i], array[i]
      i = next_i
    else
      break
    end
  end
end

def heap_sort array
  last = array.size-1
  1.upto(last) do |tail|
    max_heap_unshift_down array, tail
  end
  
  last.downto(0) do |tail|
    max_heap_shift_up array, tail
  end
  array
end