def two_sum?(arr, target_sum)
    arr.each_with_index do |ele, i|
        arr.each_with_index do |ele2, j|
            return true if (ele + ele2 == target_sum) && (i != j)
        end
    end
    false
end

# arr = [0, 1, 5, 7]
# two_sum?(arr, 6) # => should be true
# two_sum?(arr, 10) # => should be false

