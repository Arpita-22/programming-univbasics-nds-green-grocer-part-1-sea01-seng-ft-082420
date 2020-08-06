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
  arr = []
  cart.each do |cart_item|
    cart_item.dup.each do|key,value|
     if cart_item[:count] != nil
     cart_item[:count] += 1
     else
       cart_item[:count] = 1
      #binding.pry
      end
     end
    arr << cart_item
   end
  arr
end


  