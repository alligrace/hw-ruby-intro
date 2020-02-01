# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  return arr.sum
end

def max_2_sum arr
  return arr.max(2).sum
end

def sum_to_n? arr, n
  return arr.permutation(2).any? { |a, b| a + b == n }
end

# Part 2

def hello(name)
  return "Hello, " << name
end

def starts_with_consonant? s
  if /^[^aeiouAEIOU\W]/i.match(s) == nil
    return false
  else
    return true
  end
end

def binary_multiple_of_4? s
   if /\b[01]+\b/.match(s) && s.to_i(2) % 4 == 0
     return true
   else
     return false
   end
end

# Part 3

class BookInStock
  attr_accessor :isbn, :price
  def initialize(isbn, price)
    if isbn.empty? || price <= 0 
      then raise(ArgumentError)
    end
    @isbn = isbn
    @price = price
  end
  
  def price_as_string
    "$%.2f" % @price
  end
  
end

