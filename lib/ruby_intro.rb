# When done, submit this entire file to the autograder.

# Part 1 

def sum arr
  # YOUR CODE HERE Run associated tests via:  `$ rspec spec/part1_spec.rb:5`
  arr.inject(0){ |total, elem| total + elem }
end

def max_2_sum arr
  # YOUR CODE HERE Run associated tests via:  `$ rspec spec/part1_spec.rb:23`
  arr.sort.last(2).inject(0) { |total, elem| total + elem }
end

def sum_to_n? arr, n
  # YOUR CODE HERE Run associated tests via:  `$ rspec spec/part1_spec.rb:42`
  if  arr.length >= 2
    i=0
    while i<arr.length-1 do
      j=i+1
      a = arr[i]
      while j<arr.length do
        b=arr[j]
        if  a+b == n
          return true
        end
        j=j+1
      end
      i=i+1
    end
  end  
  return false  
end

# Part 2

def hello(name)
  # YOUR CODE HERE Run associated tests via:  `$ rspec -e '#hello' spec/part2_spec.rb`
 return  "Hello, #{name}"
end

def starts_with_consonant? s
  # YOUR CODE HERE Run associated tests via:  `$ rspec -e '#starts_with_consonant?' spec/part2_spec.rb`
 (/\A[^AEIOUaeiou\W]/=~s)? true:false
end

def binary_multiple_of_4? s
  # YOUR CODE HERE Run associated tests via:  `$ rspec -e '#binary_multiple_of_4?' spec/part2_spec.rb`

  result = s[/(^[01]+)/]
    if result == nil
      return false
    end

   if result.to_i(2)%4 == 0
     return true
   end


  return false

  end

# Part 3

class BookInStock

# YOUR CODE HERE Run associated tests via:  `$ rspec -e 'getters and setters' spec/part3_spec.rb` 

  def initialize (isbn, price)
    if isbn.length == 0
      raise ArgumentError.new("the ISBN number is the empty string")
    end
  
    if price <= 0
      raise ArgumentError.new("the price is less than or equal to zero")
    end

    @isbn = isbn
    @price = price
  end
  
  attr_accessor :isbn, :price #Setters&Getters

  def price_as_string
    "$%.2f" % price
  end
  
end
