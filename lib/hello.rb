def hello_t(array)
  if block_given?
    i = 0

    while i < array.length
      yield(array[i])
      i += 1
    end
    
  array
  else
    puts "Hey! No block was given"
  end
end

#the yield is a anonymous function callback taht you are passing to your
#original array that do part starts the anonymous
#function
hello_t(['Tim', 'Tom', "Jim"]) do
  |name|
  if name.start_with?('T')
    puts "Hi, #{name}"
  end
end
