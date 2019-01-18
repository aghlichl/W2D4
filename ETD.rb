require 'byebug'
def my_min(arr)
    arr.each do |el|
        smallest = true
        arr.each do |el2|
            smallest = false if el2 < el
        end 
        return el if smallest
    end  
end 

def my_min2(arr)
    arr.reduce do |smallest, el|
        if el < smallest
            el
        else 
            smallest
        end 
    end 
end 

def largest_contiguous_sub_sum(arr)
    sub_arrays = []
    arr.each_with_index do |el, i|
        arr.each_with_index do |el2, j|
            if j > i 
                sub_arrays << arr[i..j]
            end 
        end
    end 
    sorted = sub_arrays.sort_by {|arr| arr.reduce(:+)} 
    sorted.last.reduce(:+)
end 

def LCSS_Opt(arr)
    debugger
    i=0
    j=0
    curr_sum = 0
    max_sum = 0
    while j < arr.length     
      curr_sum +=  arr[j] 
      max_sum = curr_sum if curr_sum > max_sum
      if curr_sum < 0 
        curr_sum = 0 
        i = j + 1 
        j = i 
      else 
        j += 1 
      end   
    end 
    max_sum 
end 
  