# Here is a (very) naive quicksort implementation, based on Wikipedia's simple-quicksort pseudocode:

def quicksort(array) #takes an array of integers as an argument
# You need a base case, otherwise your recursive calls never terminate

    if array.length <= 1
    return array
    # Now pick a pivot:

    else
    pivot = array.sample
    array.delete_at(array.index(pivot)) # remove the pivot
    #puts "Picked pivot of: #{pivot}"
    less = []
    greater = []
    # Loop through the array, comparing items to pivot and collecting them into less and greater arrays.

    array.each do |x|
        if x <= pivot
            less << x
        else
            greater << x
        end
    end
    # Now, recursively call quicksort() on your less and greater arrays.

    sorted_array = []
    sorted_array << quicksort(less)
    sorted_array << pivot
    sorted_array << quicksort(greater)
    # Return the sorted_array and you're done.

    # using Array.flatten to remove subarrays
    sorted_array.flatten!
    # You can test it with
    end
end
