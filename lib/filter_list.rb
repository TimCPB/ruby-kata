def filter_list(array)
  filtered_list = []

  array.each {|element|filtered_list.push(element) if element.is_a?(Integer) }

  return filtered_list
end

# to review array methods

# def filter_list(l)
#   l.select{|i| i.is_a?(Integer)}
#   end

# def filter_list(l)
#   l.reject { |x| x.is_a? String }
# end