def begins_with_r(array)
  array.all? {|word| word.start_with?("r")}
end

def contain_a(array)
  contain = []
  contain << array.any? {|a| "a"}
  return contain
end
