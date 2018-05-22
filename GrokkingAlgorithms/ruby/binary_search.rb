def binary_search(list,item) 
    low = 0
    high = list.length - 1
    while low <= high 
      mid = (low + high) / 2
      guess = list[mid]
      # if guss is too high , 
      if guess == item
        return guess
      elsif guess < item
        low = guess + 1
      else
        high = guess - 1
      end
    end
end

puts binary_search((1..1000000).to_a, 55)

## Notes 
# Algothim speed is not measure in second, but
# how quickly the size of input increases. 
