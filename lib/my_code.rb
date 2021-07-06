def map(array)
  new_array = []
  i = 0 
  while i < array.length
    new_array.push(yield(array[i]))
    i += 1 
  end
  new_array 
end

map([1, 2, 3, -9]) do |n| n * -1 
end 

# map([1, 2, 3, -9]) { |n| n * -1}

def reduce(array, sv=nil)
  if sv 
    sum = sv 
    i = 0 
  else 
    sum = array[0]
    i = 1 
  end 
  while i < array.length
    sum = yield(sum, array[i])
    i += 1 
  end
  sum
end 

  
  
  
  
  
  
  
  
  