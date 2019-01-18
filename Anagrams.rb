def first_anagram?(str1, str2)
    sub_str = []
    str_arr = str1.split("")
    perm = str_arr.permutation(str1.length).to_a
    perm.each do |word|
        sub_str << word.join("")
    end
    
    sub_str.each do |word|
       return true if str2 == word 
    end 
    false 
    
end 

def second_anagram?(str1,str2)
    str1.each_char do |char|
        if str2.index(char)
            str2.delete!(char)
        end 
    end
    str2.length.zero? ? true : false
end 

def third_anagram?(str1, str2)
    str1.split("").sort == str2.split("").sort
end 

def fourth_anagram?(str1, str2)
    hash = Hash.new(0)
    str1.each_char {|ch| hash[ch] += 1 }
    str2.each_char {|ch| hash[ch] += 1 }
    hash.each do |k,v|
        return false if v%2 != 0
    end 
    true 
end 