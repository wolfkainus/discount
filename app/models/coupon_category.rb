class CouponCategory < ActiveRecord::Base
  belongs_to :coupon
  belongs_to :category
end
