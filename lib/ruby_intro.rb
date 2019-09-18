# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  total = 0
  if arr.size == 0
    return 0
  else
    for number in arr
      total = total + number
    end
    return total
  end
end

def max_2_sum arr
  # YOUR CODE HERE
  if arr.size == 0
    return 0
  elsif arr.size == 1
    return arr[0]
  else
    top = arr.max
    arr.delete_at(arr.index(top))
    second_top = arr.max
    return (top + second_top)
  end
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  if arr.size < 2
    return false
  else
    for element1 in arr
      for element2 in arr
        if (element1 + element2 == n) && (arr.index(element1) != arr.index(element2))
          return true
        end
      end
    end
    return false
  end
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, #{name}"
end

def starts_with_consonant? s
  # YOUR CODE HERE
  if (s[0] == 'A' || s[0] == 'E' || s[0] == 'I' || s[0] == 'O' || s[0] == 'U' || s[0] == 'a' || s[0] == 'e' || s[0] == 'i' || s[0] == 'o' || s[0] == 'u')
    return false
  else
    return s[0] =~ /[[:alpha:]]/ ? true : false
  end
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if (s.delete('01') == '')
    #string_size = s.size
    if (s[-2..-1] == "00")
      return true
    elsif (s.size == 1 && s == "0")
      return true
    else
      return false
    end
  else
    return false
  end
end

# Part 3

class BookInStock
# YOUR CODE HERE
def initialize(isbn, price)
  if (isbn == '')
    raise ArgumentError, 'The ISBN cannot be empty'
  elsif (price <= 0)
    raise ArgumentError, 'Price must be greater than zero'
  end
  @isbn = isbn
  @price = price
end

#getters
def isbn
  @isbn
end

def price
  @price
end

#setters
def isbn=(x)
  @isbn = x
end

def price=(x)
  @price = x
end

def price_as_string
  price_string = @price.to_s
  if (price_string.include? ".")
    if price_string[-2] == "."
      price_string << "0"
    end
  else
    price_string << ".00"
  end
  return "$" + price_string
end

end
