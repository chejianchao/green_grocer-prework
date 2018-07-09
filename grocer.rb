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
  coupons.each {|coupon|
    cart[coupon[:item]] -= coupon[:num]
    cart[coupon[:item] + "W/COUPON"] = {:price => coupon[:cost], :clearance => true, :count => coupon[:num]}
  }
  cart
end

def apply_clearance(cart)
  # code here
  cart.each {|item|
    if item[:clearance] == true
      item[:price] = item[:price]*0.8
    end
  }
end

def checkout(cart, coupons)
  # code here
end
