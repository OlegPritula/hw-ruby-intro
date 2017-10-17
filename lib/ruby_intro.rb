# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  arr.inject(0){ |total, elem| total + elem }
end

def max_2_sum arr
  # YOUR CODE HERE
  arr.sort.last(2).inject(0) { |total, elem| total + elem }
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  if  arr.length >= 2  # проверка на величину array
    key = 0 
    while arr[key] < arr[-1]
      elem1 = n-arr[key]
        if arr.include?(elem1)
        #return true
        break
       else
        key = key + 1
       end
    end
  else
    
  end  
  return false  
end

# Part 2

def hello(name)
  # YOUR CODE HERE
end

def starts_with_consonant? s
  # YOUR CODE HERE
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
end

# Part 3

class BookInStock
# YOUR CODE HERE
end
