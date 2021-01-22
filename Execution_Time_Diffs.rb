# #my_min

# Given a list of integers find the smallest number in the list.

# Example:

#     list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
#     my_min(list)  # =>  -5
# Phase I

# First, write a function that compares each element to every other element of the list. Return the element if all other elements in the array are larger.
# What is the time complexity for this function?

def my_min1(arr)
    min = arr.first 
    arr.each do |ele1|
        arr.each do |ele2|
            min = ele1 if ele1 < ele2 && ele1 < min  
        end
    end
    puts "the time complexity is O(n^2)"
    min
end



# Phase II

# Now rewrite the function to iterate through the list just once while keeping track of the minimum. What is the time complexity?

def my_min2(arr)
    min = arr.first
    arr.each do |ele|
        min = ele if ele < min 
    end
    puts "the time complexity is O(n)"
    min
end

# Largest Contiguous Sub-sum

# You have an array of integers and you want to find the largest contiguous (together in sequence) sub-sum. Find the sums of all contiguous sub-arrays and return the max.

# Example:

#     list = [5, 3, -7]
#     largest_contiguous_subsum(list) # => 8

#     # possible sub-sums
#     [5]           # => 5
#     [5, 3]        # => 8 --> we want this one
#     [5, 3, -7]    # => 1
#     [3]           # => 3
#     [3, -7]       # => -4
#     [-7]          # => -7
# Example 2:

#     list = [2, 3, -6, 7, -6, 7]
#     largest_contiguous_subsum(list) # => 8 (from [7, -6, 7])
# Example 3:

#     list = [-5, -1, -3]
#     largest_contiguous_subsum(list) # => -1 (from [-1])

# Phase I

# Write a function that iterates through the array and finds all sub-arrays using nested loops. First make an array to hold all sub-arrays. Then find the sums of each sub-array and return the max.

# Discuss the time complexity of this solution.

def largest_contiguous_subsum1(arr)
    new_arr = []
    arr.each_with_index do |ele, idx|  # O(n) 
        ((idx)...arr.length).each do |i|  #O(n) #of iterations grows linear to growth of arr.length
            new_arr << arr[idx..i]  #O(n) bc worst case scenario is i 
        end                             
    end
    new_arr.flatten.sum 
end

# Phase II

# Let's make a better version. Write a new function using O(n) time with O(1) memory. Keep a running tally of the largest sum. To accomplish this efficient space complexity, consider using two variables. One variable should track the largest sum so far and another to track the current sum. We'll leave the rest to you.

# Get your story straight, and then explain your solution's time complexity to your TA.





[1,2,3,4] # n = 4 

[1,1]
[1,2]
[1,3]
[1,4]
[2,1]
[2,2]
[2,3]
[2,4]
[3,1]
[3,2]
[3,3]
[3,4]
[4,1]
[4,2]
[4,3]
[4,4]
#16  
# n^2 

[1]
[1,2]
[1,2,3]
[1,2,3,4]
[2]
[2,3]
[2,3,4]
[3]
[3,4]
[4]
n = 4
#10 
n = 3 
# 6 

[3,6] [4,10] [5,15]