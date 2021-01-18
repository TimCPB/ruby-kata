def filter_list(array)
  filtered_list = []

  array.each {|element|filtered_list.push(element) if element.is_a?(Integer) }

  return filtered_list
end