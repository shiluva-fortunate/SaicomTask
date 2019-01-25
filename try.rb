begin
  f = File.open 'input.txt'
  arr = []
  count = 0
  freq = 0
  while line = f.gets
    input = line.to_i
    arr[count] = input
    freq += input
    count += 1
  end
  puts freq
end
