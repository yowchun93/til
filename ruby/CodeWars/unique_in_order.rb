#Implement the function unique_in_order which takes as argument a sequence and returns a list of items without any elements with the same value next to each other 
#and preserving the original order of elements.

#unique_in_order('AAAABBBCCDAABBB') == ['A', 'B', 'C', 'D', 'A', 'B']

def unique_in_order(iterable)
    new_array = []
    last = nil
    iterable.split("").each do |a|
      if a != last
        new_array << a 
        last = a 
      end
    end
    return new_array
end