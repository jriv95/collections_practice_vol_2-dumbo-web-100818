def begins_with_r(array)
  array.all? {|word| word.start_with?("r")}
end

def contain_a(array)
  array.select {|word| word.include?("a")}
end

def first_wa(array)
  array.find {|word| word.start_with("wa")}
  #array.find do |word|
    #word[0..1] == "wa"
  #end
end

def remove_non_strings (array)
  array.delete_if {|value| value.class != String }
end

#def count_elements(array)
  hash = {}
  repeat = hash
  array.collect {|element| element.}
end
