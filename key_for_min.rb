# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

def key_for_min_value(name_hash)
  if name_hash.empty?
    return nil
  else
    #store the values in an Array
    arr = []
    name_hash.each{|k, v| arr << v}
    #check array with values for the min num
    min_num = arr[0]
    arr.each{|v| if v < min_num then min_num = v end
      #check hash for min num value and return its key
      name_hash.each{|k, v| if min_num == v then return k end}
    }
  end
end