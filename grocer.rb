def consolidate_cart(cart)
  # code here
  res = {}
  cart.each{|item|
    res[item.keys[0]] = item.values[0]
  }
  res
end

def apply_coupons(cart, coupons)
  # code here
  
end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
