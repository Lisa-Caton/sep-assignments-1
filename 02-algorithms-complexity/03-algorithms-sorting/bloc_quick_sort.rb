# https://rubyalgo.github.io/algorithms/sorting/quick-sort/
def quick_sort(a,lo,hi)
    if lo<hi
        p=partition(a,lo,hi)
        quick_sort(a,lo,p-1)
        quick_sort(a,p+1,hi)
    end
  return a
end

def partition(a,lo,hi)
   i=lo
   j=hi+1
   pivot= a[lo]
    while true
    #Loop to increment i
        begin
            i+=1
            break if i==hi
        end while a[i]<pivot
    #Loop to increment j
        begin 
            j-=1
            break if j==lo
        end while a[j]>pivot
    # break the loop if pointers cross    
        break if i>=j
    #Swap arr[i] and arr[j]
        temp=a[i]
        a[i]=a[j]
        a[j]=temp
    end
    # Swap arr[lo] with arr[j]
    temp=a[lo]
    a[lo]=a[j]
    a[j]=temp
    return j
end