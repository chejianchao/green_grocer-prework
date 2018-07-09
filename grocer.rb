def consolidate_cart(cart)
  # code here
  res = {}
  cart.each{|item|
    if res[item.keys[0]] == nil
      res[item.keys[0]] = item.values[0].clone
      res[item.keys[0]][:count] = 1
    else
      res[item.keys[0]][:count]+=1
    end
  }
  res
end
require "pry"
def apply_coupons(cart, coupons)
  # code here
  #cart = consolidate_cart(cart)
  #puts cart, coupons
  coupons.each {|coupon|
    cart[coupon[:item]][:count] -= coupon[:num]
    cart[coupon[:item] + " W/COUPON"] = {:price => coupon[:cost], :clearance => true, :count => coupon[:num]}
    #pry
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
  cart
end

def checkout(cart, coupons)
  # code here
  puts cart
  cart = apply_coupons(cart,coupons)
  cart = apply_clearance(cart)
  total = 0
  cart.each{|item|
    total += item[:price]
  }
  if total > 100
    total *= 0.9
  end
  total
end
