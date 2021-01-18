def find_outlier(array)
  array.each do |num|
    return num if num % 2 != 0
  end
end