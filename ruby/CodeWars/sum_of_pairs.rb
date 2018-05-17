## sum of pairs 
#https://www.codewars.com/kata/sum-of-pairs/ruby

def sum_pairs(array, total)
    length = array.length
    array.sort!
    p array
    left = 0
    right = length - 1
    while left < right
        if (array[left] + array[right] == total)
            return [array[left], array[right]]
        elsif (array[left] + array[right] < total)
            left += 1
        else
            right -= 1
        end
    end
    return nil
end

def sum_pairs(array, total)
    for i in 0..array.length do 
        for j in (i+1)..array.length-1 do
            if (array[i] + array[j] == total)
                return [array[i] ,array[j]]
            end
        end
    end
    nil
end

puts sum_pairs([1, 4, 8, 7, 3, 15], 8)

puts sum_pairs([1, -2, 3, 0, -6, 1], -6)
puts sum_pairs([5, 9, 13, -3], 10)
puts sum_pairs([20, -13, 40], -7)
puts sum_pairs([10, 5, 2, 3, 7, 5] , 10)