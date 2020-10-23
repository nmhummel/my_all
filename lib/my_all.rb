

def my_all?(collection)
    i = 0
    block_return_values = []
    while i < collection.length
      block_return_values << yield(collection[i])
      i = i + 1
    end
  
    if block_return_values.include?(false)
      false
    else
      true
    end
end 



#yield1
my_all?([1,2,3]) {|i| i < 2} 
# collection of 1,2,3 - each number assessed and all must meet criteria of being less than 2