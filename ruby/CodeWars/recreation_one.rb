#https://www.codewars.com/kata/integers-recreation-one

# 1. Firstly find out the divisors for one number first 
# 2. Find out whether the sum of the divisors are a square

# zero division error lol

def list_squared(starting, ending) 
    new_array = []
    (starting..ending).each do |number|
        divisibles = squared_divisibles(number)
        if perfect_square?(divisibles)
            new_array << [number, sum_of_divisibles(divisibles)]
        end
    end
    return new_array
end

# this method will take in a number of values 
# say
def squared_divisibles(number)
    divisibles = []
    (1..number).each do |a|
        if number % a == 0
            divisibles << a * a
        end
    end
    return divisibles
end

## method to check if perfect square 
## need to return two values 
def perfect_square?(divisibles)
    sum = sum_of_divisibles(divisibles)
    perfect_square = Math.sqrt(sum).to_i ** 2 == sum
end

def sum_of_divisibles(divisibles)
    divisibles.reduce(:+)
end

## get a list of squared divisibles
# 
# divisibles = squared_divisibles(42)
# puts perfect_square?(divisibles)
p list_squared(1,250)

