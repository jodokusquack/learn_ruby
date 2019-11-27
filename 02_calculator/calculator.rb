#write your code here
def add(a,b)
  return a+b
end

def subtract(a,b)
  return a-b
end

def sum(array)
  sum = 0
  array.each do |number|
    sum += number
  end
  return sum
end

def multiply(*numbers)
  return numbers.reduce(1, :*)
end

def power(a,b)
  a**b
end

def factorial(a)
  if a == 0
    return 1
  else 
    return a * factorial(a-1)
  end
end


