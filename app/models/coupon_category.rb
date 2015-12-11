class CouponCategory < ActiveRecord::Base
  belongs_to :coupon
  belongs_to :category

  validates :coupon_id, uniqueness: { scope: :category_id }
  
end
