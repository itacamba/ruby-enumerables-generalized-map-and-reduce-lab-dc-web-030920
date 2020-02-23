# Your Code Here
def map(array)
  new = []
  i = 0
  while i < array.length do
    each_element = array[i] # <== Unique work
    new.push(yield(each_element))
    i += 1
  end
  new
end

def reduce(array, starting_point = 0)
index = 0
total = starting_point
while index < array.length do
  total = yield(total + array[index])
  index += 1
end
total
end
