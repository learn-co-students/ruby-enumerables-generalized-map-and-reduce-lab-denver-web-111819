def map(array)
  new_array = []
  index = 0
  while index < array.length 
    new_array.push(yield(array[index]))
    index += 1 
  end 
  new_array
end

def reduce(array, starting_value=nil)
  if starting_value
    first = starting_value
    index = 0 
  else 
    first = array[0]
    index = 1
  end 
  
  while index < array.length
    first = yield(first, array[index])
    index += 1
  end
  first
end 