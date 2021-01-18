def filter_list(array)
  filtered_list = []
  array.each do |element|
    if element.is_a?(Integer)
       filtered_list.push(element)
    end
  end

  return filtered_list
end