def begins_with_r(array)
  array.all? {|word| word.start_with?("r")}
end

def contain_a(array)
  array.select {|word| word.include?("a")}
end

def first_wa(array)
  #array.find {|word| word.start_with("wa")}
  array.find do |word|
    word[0..1] == "wa"
  end
end

def remove_non_strings (array)
  array.delete_if {|value| value.class != String }
end

def count_elements(array)
  array.sort_by do |hash|
    hash[:name]
  end

  array_w_count = []
  count = 1;
  prev = array[0]

  for i in 1..(array.size-1)
    if(array[i] == prev)
        count += 1
    else
      array_w_count << prev.merge({:count => count})
      prev = array[i]
      count = 1
    end
  end
  array_w_count << prev.merge(:count => count)
  array_w_count
end
end
