# Your Code Here

def map (array)
  ar = []
  i = 0
  while i < array.count do
    ar << yield(array[i])
    i += 1 
  end
  ar
end


def reduce(array, starting_point = 0)
  b = starting_point
  i = 0 
  while i < array.count do
    a = yield(array[i], b)
    if !a
      b = false
    else
      b = a
    end
    i += 1 
  end
  b
end





