## Grokking Algorithms Chapter 2 Selection Sort 
## sorting list from most played , to least played

array = [5,3,6,2,10]
## First step, go through the list ,and find the most-played
## add the artist to the new-list 
def selection_sort(arr)
  newArr = []
  arr.each_with_index do |a,i|
    smallest = find_smallest(arr)
    puts arr[smallest]
    # newArr << arr.pop(smallest)
  end
  newArr
end

## returns smallest item in the list
## o(n) , has to scan through
def find_smallest(arr)
  smallest = arr[0]
  smallest_index = 0
  arr.each_with_index do |a,i|
    if arr[i] < smallest
      smallest = arr[i]
      smallest_index = i
    end
  end
  return smallest_index
end

puts selection_sort([5,3,6,2,10])