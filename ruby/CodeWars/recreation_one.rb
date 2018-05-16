#https://www.codewars.com/kata/integers-recreation-one

# 1. Firstly find out the divisors for one number first 
# 2. Find out whether the sum of the divisors are a square

# zero division error lol

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
def perfect_square?(divisibles)
    sum = divisibles.reduce(:+)
    Math.sqrt(sum).to_i ** 2 == sum
end

divisibles = squared_divisibles(42)
puts perfect_square?(divisibles)