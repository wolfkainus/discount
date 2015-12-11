class Category < ActiveRecord::Base
  has_many :coupon_category
  has_many :coupons, through: :coupon_category
end
