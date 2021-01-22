# Phase I:

# Write a method #first_anagram? that will generate and store all the possible anagrams of the first string. Check if the second string is one of these.

# Hints:

# For testing your method, start with small input strings, otherwise you might wait a while
# If you're having trouble generating the possible anagrams, look into this method.
# What is the time complexity of this solution? What happens if you increase the size of the strings?

def first_anagram?(str1, str2)
    str1 = str1.split('')                       
    str1 = str1.permutation.to_a                # O(n!)
    anagrams = str1.map {|arr| arr.join('')}      

    anagrams.include?(str2) 
end                                             # 0(n!)

# Phase II:

# Write a method #second_anagram? that iterates over the first string. For each letter in the first string, 
# find the index of that letter in the second string (hint: use Array#find_index) and delete at that index. 
# The two strings are anagrams if an index is found for every letter and the second string is empty at the end of the iteration.

# Try varying the length of the input strings. What are the differences between #first_anagram? and #second_anagram??

def second_anagram?(str1, str2)
    arr2 = str2.split('')
    str1.each_char do |char|                #O(n)
        arr2.delete_at(arr2.index(char))    #O(n)
    end
    arr2.empty?                             #O(n)
end                                         #O(n^2)

# Phase III:

# Write a method #third_anagram? that solves the problem by sorting both strings alphabetically. 
# The strings are then anagrams if and only if the sorted versions are the identical.

# What is the time complexity of this solution? Is it better or worse than #second_anagram??

def third_anagram?(str1,str2)
    sorted_1 = str1.split('').sort.join('')  #O(n) , #O(n*log(n)), O(n)
    sorted_2 = str2.split('').sort.join('')
    sorted_1 == sorted_2 
end                                         #O(n * log(n))

# Phase IV:

# Write one more method #fourth_anagram?. This time, use two Hashes to store the number of 
# times each letter appears in both words. Compare the resulting hashes.

# What is the time complexity?

# Bonus: Do it with only one hash.

def fourth_anagram?(str1, str2)
    h = Hash.new(0)
    str1.each_char do |char|    #O(n)
        h[char] += 1 
    end

    str2.each_char do |char|    #O(n)
        h[char] -= 1
    end

    h.all? {|k,v| v == 0}       # O(n)
 end                            # O(3n) => O(n)