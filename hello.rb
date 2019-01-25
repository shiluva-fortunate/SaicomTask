begin
  f = File.open 'input.txt'
  arr = []
  count = 0
  i = 0
  x = 1
  freq = 0
  while line = f.gets
    input = line.to_i
    arr[count] = input
    count += 1
  end
  puts 'array size'
  puts count # just to check if it reads through all the items in the file, and it does!
  new_arr = arr.reverse # we invert our array in order to reverse our calculations
  puts 'inverted array'
  puts new_arr # just to s=confirm if we really reversed our array and we did!
  x = new_arr[0] + new_arr[1]
  puts 'addition example'
  puts x
  puts ' look out for whatever comes after this'
  size = new_arr.size
  puts 'the new arrays size'
  puts size
  if count.even? == true
    puts 'the number of entries is even'
    until i == size
      first = new_arr[i]
      puts 'first entry'
      puts first
      i += 1
      second = new_arr[i]
      puts 'second entry'
      puts second
      add = first + second
      puts 'the added value'
      puts add
      puts 'frequency'
      freq += add
      puts freq
      i += 1
    end
  else
    puts ' the number of entries is odd'
    until i == size - 1
      first = new_arr[i]
      puts 'first entry'
      puts first
      i += 1
      second = new_arr[i]
      puts 'second entry'
      puts second
      add = first + second
      puts 'the added value'
      puts add
      puts 'frequency'
      freq += add
      puts freq
      i += 1
    end
    puts "this is the last element: #{new_arr[size - 1]}"
    frequency = freq + new_arr[size - 1]
    puts frequency
  end
ensure
  f.close
end

# array = [ 'first','middle','last']
# for each in array.reverse do
# print array
# end
# will print

# last
# middle
# first*/
