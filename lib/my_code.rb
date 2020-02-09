
# my own map
#  returns an array with all values made negative (FAILED - 1)
#  returns an array with the original values (FAILED - 2)
#  returns an array with the original values multiplied by 2 (FAILED - 3)
#  returns an array with the original values squared (FAILED - 4)

def map(array) 
  
  new = []
  i = 0 
  while i < array.length do 
    new.push(yield(array[i]))
    i+=1
  end 
  new
end 



#my own reduce
#  returns a running total when not given a starting point (FAILED - 5)
#  returns a running total when given a starting point (FAILED - 6)
#  returns true when all values are truthy (FAILED - 7)
#  returns false when any value is false (FAILED - 8)
#  returns true when a truthy value is present (FAILED - 9)
#  returns false when no truthy value is present (FAILED - 10)



def reduce(array, sv=nil)

if sv 
  sum = sv 
  i=0 
else
  sum = array[0]
  i = 1
end
while i < array.length do
 sum = yield(sum, array[i])
 i += 1
end 
sum
end
