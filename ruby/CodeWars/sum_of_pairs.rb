## sum of pairs 
#https://www.codewars.com/kata/sum-of-pairs/ruby
def sum_pairs(array, total)
    length = array.length
    array.sort!
    left = 0
    right = length - 1
    while left < right
        if (array[left] + array[right] == total)
            return [array[left], array[right]]
        elsif (array[left]+array[right] > total )
            right -= 1
        else
            left += 1
        end
    end
    return nil
end

def sum_pairs(array,total) 

end

puts sum_pairs([1, 4, 8, 7, 3, 15], 8)

# puts sum_pairs([1, -2, 3, 0, -6, 1], -6)
# puts sum_pairs([5, 9, 13, -3], 10)