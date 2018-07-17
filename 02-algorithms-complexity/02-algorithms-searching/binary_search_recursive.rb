# recursive
def binary_search(collection, value)
  low = 0
  high = collection.length - 1

  mid = (low + high) / 2 
  return false if high < low 

  if collection[mid] == value 
    true
  elsif collection[mid] < value
    binary_search(collection[(mid+1)..high], value)
  else
    binary_search(collection[low..mid], value)
  end
end

puts binary_search(['A', 'B', 'C', 'D', 'E', 'F', 'G'], 'G')