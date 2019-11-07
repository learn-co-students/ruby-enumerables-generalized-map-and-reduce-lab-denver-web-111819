def map(source_array)
  new_array = []
  source_array.length.times do |index|
    new_array.push(yield(source_array[index]))
  end
  return new_array
end

def reduce(source_array, starting_point = 0)
  output = starting_point
  source_array.length.times do |index|
    if source_array[index] == false
      output = true
    end
  end
  
  source_array.length.times do |index|
    output = yield(output, source_array[index])
  end
  return output
end

puts 1 && false