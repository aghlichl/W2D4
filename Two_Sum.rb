def bad_two_sum?(arr, target_sum)
    #O(n^2) worst case
    arr.each_with_index do |el, i|
        arr.each_with_index do |el2, j|
            if j>i
                return true if el+el2 == target_sum
            end 
        end 
    end 
    false
end

def okay_two_sum?(arr, target_sum)
    arr = arr.sort 
    i = 0 
    j = arr.length - 1 
    while i != j 
        pair_sum = arr[i] + arr[j] 
        return true if pair_sum == target_sum 
        if pair_sum < target_sum 
            i += 1 
        elsif pair_sum > target_sum 
            j -= 1 
        end 
    end 
    false 
end 

def incredible_two_sum?(arr, target_sum)
    
end 



