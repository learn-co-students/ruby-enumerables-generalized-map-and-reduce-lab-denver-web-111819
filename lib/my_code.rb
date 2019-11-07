def map(array)
  new_array = []
  array.each do |x|
    new_array.push(yield(x))
  end 
  new_array
end  

# starting_point is an optional parameter defaulted to nil
def reduce(array, starting_point = nil)
  
  # If the caller provided us with a starting point
  if starting_point
    
    # set our reduced_value value to the starting point
    reduced_value = starting_point
    
     # and set the starting index to 0
    start_index = 0
  else
    # otherwise, set the reduced_value to the first value in the array
    reduced_value = array[0]
    
    # and set the start index to 1, since we've already covered the first index
    start_index = 1
  end
  
  # for each item in the array, starting at the start index
  for i in start_index...array.length
  
    # grab the item at the i index, and call it x
    x = array[i]
    
    # pass the reduced_value and the x value to yield, and assign the result back to reduced_value
    reduced_value = yield(reduced_value, x)
  end
  
  # return the reduced_value
  reduced_value
end  
