require 'pry'

def find_item_by_name_in_collection(name, collection)
  collection.each do |item_info|
    item_info.each{|key, value| return item_info if value == name}
  # binding.pry
  end
  nil
end

def consolidate_cart(cart)
  single = cart.uniq
  single.each do|info_hash| 
    info_hash[:count] = cart.count{|x| x == info_hash} 
    # binding.pry
  end
end


  