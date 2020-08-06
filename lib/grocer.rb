require 'pry'
def find_item_by_name_in_collection(name, collection)
  # Implement me first!
  #
  # Consult README for inputs and outputs
  collection.each do |element|
    if element[:item] == name  #element[:item] is the value/itemname
      return element
    end
  end
  return nil
end

def consolidate_cart(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.
  def consolidate_cart(cart)
  hash = {}
  #O(n)
  cart.each do |cart_item|
    key = cart_item
    value  = hash[key]
    if  value == 1
      #O(1)
      hash[key] = value + 1
    else
      hash[key] = 1
    end
  end
  arr = []
  #O(n)
  hash.each do |key, value|
    #data = key
    #data[:count] = value
    data = {
      :item => key[:item],
      :price => key[:price],
      :clearance => key[:clearance],
      :count => value,
    }
    arr << data
  end
  arr
end


  