# frozen_string_literal: true

def find_outlier(integers)
  even_num_count = 0
  integers.each { |num| even_num_count += 1 if num.even? }
  if even_num_count == 1
    integers.each { |num| return num if num.even? }
  else
    integers.each { |num| return num if num.odd? }
  end
end
