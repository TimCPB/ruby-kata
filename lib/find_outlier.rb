def find_outlier(array)
  even_num_count = 0
  array.each { |num| even_num_count += 1 if num.even? }
  if even_num_count == 1
    array.each { |num| return num if num.even? }
  else
    array.each { |num| return num if num.odd? }
  end
end